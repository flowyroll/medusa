.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1ab07, %rsi
lea addresses_A_ht+0x13e65, %rdi
nop
nop
nop
nop
nop
lfence
mov $76, %rcx
rep movsl
nop
xor $27655, %rdx
lea addresses_WC_ht+0x6307, %rsi
lea addresses_UC_ht+0xc107, %rdi
lfence
mov $71, %rcx
rep movsb
nop
nop
nop
xor $27691, %rdi
lea addresses_normal_ht+0xbe07, %rsi
nop
nop
add $47352, %r10
movw $0x6162, (%rsi)
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x10f07, %rsi
lea addresses_normal_ht+0x11417, %rdi
nop
nop
nop
sub %r14, %r14
mov $55, %rcx
rep movsw
add $45570, %r10
lea addresses_WT_ht+0x1a847, %r10
nop
nop
nop
nop
xor $11409, %rbp
movb $0x61, (%r10)
nop
nop
nop
nop
cmp $60807, %rbp
lea addresses_D_ht+0x66c7, %rbp
clflush (%rbp)
nop
sub $28575, %rsi
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
inc %rbp
lea addresses_WC_ht+0x10161, %rsi
cmp %rdi, %rdi
mov (%rsi), %r10d
nop
nop
nop
nop
add $22218, %rsi
lea addresses_normal_ht+0x8e3f, %rsi
lea addresses_WT_ht+0x10c07, %rdi
nop
add %r9, %r9
mov $9, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xf407, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and $4530, %r10
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
and $64839, %r14
lea addresses_D_ht+0x4e87, %r10
clflush (%r10)
nop
nop
sub %rbp, %rbp
mov (%r10), %esi
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x1aa57, %r14
nop
nop
cmp $4848, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r14)
sub %rbp, %rbp
lea addresses_normal_ht+0x16707, %rsi
and $22047, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8

// Faulty Load
lea addresses_PSE+0x1b307, %r14
nop
add $14204, %r12
movaps (%r14), %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'44': 1322, '48': 2, '00': 18488, '46': 2017}
00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 44 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 46 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 46 00 46 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 46 00 00 00 00 00 00 44 00 00 00 46 00 00 00 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 44 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 46 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 46 00 00 44 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 44 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00
*/
