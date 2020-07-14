.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7eb4, %rax
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
dec %rdx
lea addresses_WC_ht+0x10af4, %rsi
lea addresses_WC_ht+0x17ef4, %rdi
clflush (%rdi)
nop
cmp $2949, %r10
mov $36, %rcx
rep movsq
add %r10, %r10
lea addresses_A_ht+0x17d34, %rax
nop
nop
nop
dec %r11
movb $0x61, (%rax)
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1d2f4, %rsi
lea addresses_D_ht+0x2358, %rdi
nop
nop
nop
nop
nop
and $32340, %r14
mov $37, %rcx
rep movsq
nop
sub $5951, %r14
lea addresses_WT_ht+0x1b974, %rsi
lea addresses_D_ht+0x18474, %rdi
clflush (%rdi)
nop
dec %rdx
mov $37, %rcx
rep movsw
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0xd974, %rcx
nop
nop
add $10182, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1d834, %rax
clflush (%rax)
nop
and $22648, %rcx
mov (%rax), %edx
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x41d0, %rsi
lea addresses_D_ht+0xd674, %rdi
nop
nop
nop
sub %r14, %r14
mov $116, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x76f4, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add $32300, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%r11)
nop
dec %rdx
lea addresses_WC_ht+0x188d4, %rax
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1cef4, %rcx
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
sub $55448, %rdi
lea addresses_D_ht+0x27ac, %r10
nop
nop
sub $16264, %rdi
movb $0x61, (%r10)
nop
xor $36615, %rcx
lea addresses_D_ht+0x17cf4, %rsi
lea addresses_normal_ht+0x5ef4, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $74, %rcx
rep movsb
sub $32126, %r11
lea addresses_normal_ht+0xd6f4, %r10
nop
xor $29559, %r11
mov $0x6162636465666768, %rax
movq %rax, (%r10)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x17bb4, %rsi
lea addresses_D_ht+0x99f4, %rdi
nop
nop
nop
nop
nop
cmp $10211, %r11
mov $33, %rcx
rep movsq
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x16234, %r13
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovntdq %ymm0, (%r13)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_UC+0xb492, %rcx
add %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movntdq %xmm2, (%rcx)
xor %rbx, %rbx

// Store
lea addresses_D+0xf2f4, %rax
nop
nop
nop
nop
nop
inc %rcx
movb $0x51, (%rax)
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_US+0x46f4, %r8
nop
sub $31406, %rbx
vmovaps (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'00': 530}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
