.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a159, %rbx
clflush (%rbx)
nop
nop
and %rsi, %rsi
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x13499, %rbx
add $60143, %r11
movl $0x61626364, (%rbx)
nop
inc %rdi
lea addresses_A_ht+0x13759, %rsi
lea addresses_D_ht+0x172d9, %rdi
nop
nop
xor $8568, %rbx
mov $59, %rcx
rep movsw
nop
nop
cmp $14659, %rcx
lea addresses_normal_ht+0x12419, %rcx
nop
sub %r13, %r13
movb (%rcx), %r11b
nop
and %r11, %r11
lea addresses_D_ht+0x17359, %rsi
lea addresses_UC_ht+0x18d91, %rdi
nop
nop
nop
nop
nop
cmp $64138, %r9
mov $96, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x1b359, %r11
cmp $56562, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x10659, %r11
nop
nop
nop
cmp $1948, %rbp
mov (%r11), %rsi
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x25d9, %rbp
nop
nop
nop
and $63794, %r13
movb $0x61, (%rbp)
nop
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x3225, %rsi
lea addresses_WC_ht+0x11759, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $103, %rcx
rep movsl
nop
nop
nop
add $52736, %rbp
lea addresses_WC_ht+0x9d9, %rdi
sub $18159, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
add $47690, %r9
lea addresses_normal_ht+0x19ad9, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %r9w
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xf359, %r9
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r9)
nop
nop
add $42658, %r9

// Faulty Load
lea addresses_UC+0x1ef59, %r12
inc %r14
vmovaps (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'44': 8, '49': 4509, '46': 17104, '45': 134, '39': 1, '00': 71, 'f5': 2}
44 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 49 49 46 46 49 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 49 49 46 46 49 46 46 46 49 46 46 49 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 49 49 46 46 46 49 49 46 46 49 46 46 49 46 46 49 46 45 49 46 46 49 46 46 46 46 46 49 49 46 46 46 46 46 46 46 46 46 46 49 49 49 46 46 46 49 46 46 46 46 46 46 46 49 49 49 46 46 46 49 46 46 49 46 46 46 46 46 49 49 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 49 49 46 46 49 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 49 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 46 46 49 49 49 46 46 49 46 46 46 46 46 46 46 46 49 49 49 46 46 46 49 46 46 49 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 46 49 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 46 46 49 49 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 45 49 46 46 49 46 46 49 46 46 46 46 46 49 49 46 49 46 46 49 46 46 49 46 46 49 49 46 46 46 46 49 46 46 46 46 46 46 46 49 49 49 46 46 46 46 46 46 49 46 46 49 46 46 46 46 45 49 46 46 49 46 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 49 49 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 49 49 49 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 49 46 46 46 49 46 49 49 49 46 46 46 46 46 46 46 46 46 46 46 49 49 46 46 46 49 46 46 49 46 46 49 46 46 49 49 46 46 46 46 49 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 46 49 49 49 46 46 46 46 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 45 46 49 49 46 46 46 45 49 46 46 49 46 49 46 00 46 49 46 49 46 46 46 49 46 46 49 46 49 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 49 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 49 49 46 46 46 46 49 46 46 46 46 46 46 46 49 49 49 46 46 46 49 46 46 46 46 46 46 46 49 49 49 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 49 49 49 46 46 46 49 46 46 46 46 46 46 46 49 49 46 46 46 46 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 49 49 49 49 46 46 46 46 46 49 46 46 46 46 46 46 46 49 49 49 46 46 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 49 46 46 49 46 46 49 49 49 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 46 49 46 46 46 46 46 46 49 49 46 46 46 49 46 46 49 46 46 46 46 46 49 49 49 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 49 46 46 49 46 46 49 46 46 49 46 46 49 49 46 46 46 49 46 46 49 46 46 49 46
*/
