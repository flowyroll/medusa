.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1146d, %rax
nop
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xe26d, %rsi
lea addresses_D_ht+0x1e005, %rdi
nop
nop
nop
inc %rdx
mov $108, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x96ed, %rax
nop
nop
nop
cmp $31243, %rsi
movl $0x61626364, (%rax)
nop
xor $56719, %rdi
lea addresses_UC_ht+0xe798, %r11
nop
cmp $49113, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
dec %rdi
lea addresses_WC_ht+0x1c6d, %rdi
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
and $40221, %rsi
lea addresses_A_ht+0xe802, %rbx
dec %rdi
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
cmp $8079, %rcx
lea addresses_UC_ht+0x16d6d, %rbx
nop
nop
add %r11, %r11
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
cmp $3682, %rdx
lea addresses_normal_ht+0xc2ed, %rbx
nop
nop
xor %r11, %r11
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xee6d, %rax
inc %rbx
movb $0x61, (%rax)
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x3e6d, %r11
nop
nop
nop
nop
mfence
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0xe869, %r11
nop
nop
nop
add $16428, %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm6
vpextrq $0, %xmm6, %rdi
xor %rcx, %rcx
lea addresses_normal_ht+0x52ad, %rbx
nop
nop
nop
sub %rdx, %rdx
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
and $16042, %rax
lea addresses_D_ht+0x1dcc6, %rax
nop
nop
nop
inc %rcx
movb $0x61, (%rax)
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbx

// Load
lea addresses_D+0x457d, %rax
nop
nop
nop
xor $65300, %rbx
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
mov $0x2a4d52000000066d, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rax)
nop
xor %r15, %r15

// Store
lea addresses_RW+0x2bed, %rax
clflush (%rax)
and $38005, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rax)
and $4197, %rax

// Faulty Load
mov $0x2a4d52000000066d, %r10
sub %r14, %r14
movaps (%r10), %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 4}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'f0': 1, '00': 2039, 'f8': 6, 'dc': 1, 'f7': 1, 'ec': 1, 'c5': 1, '40': 1, 'ff': 121, '19': 1, '73': 1, 'dd': 6, '4c': 1, 'cd': 1, '99': 1, '17': 2, 'ae': 1, 'e9': 1, '78': 1, 'e7': 13, 'eb': 1, '68': 2}
00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 f8 00 00 00 00 00 00 00 00 00 ff 00 00 00 eb 00 00 00 e9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 dc 00 00 00 ff 00 00 f8 00 00 f8 00 00 00 ff 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 cd 00 00 00 00 00 f8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 99 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 e7 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 e7 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 40 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00
*/
