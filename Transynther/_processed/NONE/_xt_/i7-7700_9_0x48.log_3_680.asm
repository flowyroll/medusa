.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x103a9, %r12
nop
nop
nop
nop
add $58211, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
and $46093, %rbx
lea addresses_A_ht+0x8b5b, %r15
nop
sub %r12, %r12
mov (%r15), %ebp
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x24e9, %r13
inc %r15
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
cmp %rbx, %rbx
lea addresses_D_ht+0x1df69, %r15
add %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0xdb59, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov (%rdi), %r13
nop
nop
sub $38777, %r8
lea addresses_D_ht+0x1dab9, %rsi
lea addresses_WC_ht+0x9bc1, %rdi
nop
nop
and $2513, %r12
mov $105, %rcx
rep movsw
nop
add %rbx, %rbx
lea addresses_UC_ht+0xb7f9, %rbp
nop
add %r15, %r15
movb $0x61, (%rbp)
nop
dec %rbx
lea addresses_WC_ht+0x1aff9, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $10309, %r15
movl $0x61626364, (%rdi)
cmp $12764, %rsi
lea addresses_normal_ht+0xf3f, %r12
nop
nop
and $28469, %rbx
movl $0x61626364, (%r12)
nop
nop
xor $64161, %rcx
lea addresses_UC_ht+0x11b29, %rsi
sub %r12, %r12
movl $0x61626364, (%rsi)
add %rbx, %rbx
lea addresses_WC_ht+0x4d5c, %rcx
nop
nop
and $64788, %rbp
movl $0x61626364, (%rcx)
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rsi

// Store
lea addresses_A+0x1d469, %r11
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
sub $47392, %r13

// Store
mov $0xa69, %rbx
nop
nop
nop
sub $39032, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movntdq %xmm5, (%rbx)
nop
nop
dec %rbp

// Load
lea addresses_UC+0xef57, %r13
nop
nop
nop
nop
cmp %r12, %r12
mov (%r13), %ebx
nop
nop
nop
and $9066, %r10

// Store
lea addresses_WC+0x1f0e9, %rbx
nop
and $51747, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
sub %r11, %r11

// Store
lea addresses_PSE+0x6f29, %r12
nop
nop
sub %r10, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
cmp $43409, %rsi

// Store
mov $0x1f130f00000009e9, %r11
clflush (%r11)
nop
dec %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r11)
nop
xor $12273, %r10

// Store
lea addresses_WC+0xd1f9, %r13
nop
nop
nop
nop
nop
xor $28628, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r13)
nop
nop
xor $34673, %r13

// Load
lea addresses_PSE+0x1f315, %r11
nop
nop
xor $478, %rsi
mov (%r11), %ebp
sub %rbx, %rbx

// Store
lea addresses_PSE+0x1e9e9, %r11
dec %rbx
movw $0x5152, (%r11)
nop
xor $32802, %r10

// Faulty Load
lea addresses_RW+0x1b269, %r10
nop
nop
nop
add $63068, %rsi
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 5, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 4, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'32': 3}
32 32 32
*/
