.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9500, %rdi
clflush (%rdi)
nop
xor %rsi, %rsi
mov (%rdi), %r13
and $63494, %rcx
lea addresses_A_ht+0x187d4, %r8
nop
nop
and $42484, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x16c64, %rsi
nop
nop
nop
nop
nop
inc %r8
movb $0x61, (%rsi)
inc %rcx
lea addresses_D_ht+0x171f4, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm5
and $0xffffffffffffffc0, %rdi
movntdq %xmm5, (%rdi)
nop
nop
xor $3909, %rcx
lea addresses_A_ht+0x1c7d4, %rsi
nop
nop
nop
nop
and $46013, %r13
mov (%rsi), %rdi
nop
xor $4031, %rax
lea addresses_A_ht+0x70f4, %r13
nop
cmp %rbx, %rbx
movb $0x61, (%r13)
nop
nop
nop
nop
nop
sub $27243, %r13
lea addresses_WT_ht+0x1aeb4, %rdi
nop
nop
nop
nop
nop
cmp $53708, %rcx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x18294, %rsi
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rsi
movntdq %xmm5, (%rsi)
add %rdi, %rdi
lea addresses_A_ht+0x1290c, %rcx
add %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x150da, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rcx), %edi
cmp %rsi, %rsi
lea addresses_D_ht+0x128d4, %rax
cmp %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rax)
nop
nop
dec %rsi
lea addresses_normal_ht+0x62d4, %rsi
lea addresses_UC_ht+0x16920, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $2, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0xc9d4, %rbx
xor $32926, %rax
movw $0x6162, (%rbx)
nop
add $11555, %rsi
lea addresses_UC_ht+0x34d4, %rsi
lea addresses_WC_ht+0x11bd4, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $94, %rcx
rep movsb
nop
nop
nop
lfence
lea addresses_WT_ht+0xcd4, %rcx
nop
xor %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_normal+0x1a2d4, %rax
nop
nop
nop
nop
xor $15229, %r13
movl $0x51525354, (%rax)
nop
nop
nop
and $41331, %r8

// Store
mov $0x5e02b400000004d4, %rcx
nop
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%rcx)
dec %r13

// Store
lea addresses_A+0x12ed4, %rcx
nop
cmp $25526, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WT+0x19154, %r13
clflush (%r13)
inc %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_RW+0x18e14, %r9
nop
add $21807, %r13
mov (%r9), %r14
nop
nop
sub $19755, %rdx

// Load
lea addresses_WT+0x1f14c, %rax
nop
dec %rdx
mov (%rax), %r9w
nop
nop
nop
add %r13, %r13

// Store
lea addresses_WT+0x1edd4, %r14
nop
nop
nop
nop
and $16537, %r9
movb $0x51, (%r14)
xor %r8, %r8

// Store
lea addresses_RW+0xd9d4, %rcx
sub %r13, %r13
movw $0x5152, (%rcx)
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_UC+0x9ed4, %rcx
nop
nop
and $37203, %r8
mov (%rcx), %r9w
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': True, 'NT': False}}
{'58': 16877}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
