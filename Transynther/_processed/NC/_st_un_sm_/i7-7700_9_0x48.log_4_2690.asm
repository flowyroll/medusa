.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x6194, %rax
nop
nop
nop
nop
sub $15624, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x11614, %rsi
lea addresses_D_ht+0xca14, %rdi
nop
nop
add $42924, %r8
mov $102, %rcx
rep movsw
nop
and %rbx, %rbx
lea addresses_WC_ht+0xd954, %rsi
lea addresses_normal_ht+0x13fb0, %rdi
nop
nop
cmp $52953, %r11
mov $83, %rcx
rep movsw
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1d644, %rsi
cmp $25644, %r8
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
cmp %rsi, %rsi
lea addresses_normal_ht+0x1a494, %rax
nop
xor $28571, %rdi
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
xor $49275, %rbx
lea addresses_normal_ht+0x3920, %rsi
lea addresses_normal_ht+0x13104, %rdi
nop
nop
nop
nop
xor $54227, %rdx
mov $50, %rcx
rep movsb
dec %rcx
lea addresses_WC_ht+0x12594, %rsi
lea addresses_normal_ht+0x17c54, %rdi
nop
cmp $5796, %rdx
mov $43, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $19939, %rsi
lea addresses_WC_ht+0x1861a, %rsi
lea addresses_UC_ht+0x1a344, %rdi
nop
nop
add $24187, %rdx
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
and $46544, %rdi
lea addresses_D_ht+0x8614, %rsi
lea addresses_UC_ht+0x15f94, %rdi
nop
inc %r8
mov $64, %rcx
rep movsw
xor %rdx, %rdx
lea addresses_D_ht+0x132e4, %rdx
nop
sub %r11, %r11
mov (%rdx), %rax
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x6114, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor $4076, %r11
movw $0x6162, (%rdx)
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x175f4, %rax
nop
nop
add $11182, %rdx
movb (%rax), %bl
nop
xor $46661, %rcx
lea addresses_WT_ht+0x15414, %rax
and %rcx, %rcx
movb $0x61, (%rax)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x10614, %rdi
dec %r11
movl $0x61626364, (%rdi)
add $23317, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rdx

// Load
lea addresses_PSE+0x152f4, %rdx
nop
nop
nop
inc %r13
mov (%rdx), %r14
nop
nop
nop
nop
nop
cmp $62155, %rdx

// Store
lea addresses_UC+0x1b694, %rdx
nop
nop
cmp $55784, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_A+0xac14, %r9
nop
nop
inc %rbx
movl $0x51525354, (%r9)
nop
and %r12, %r12

// Store
lea addresses_WT+0x79d4, %r8
nop
nop
nop
nop
nop
and $14522, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
add %rbx, %rbx

// Load
mov $0x114a480000000a14, %r9
nop
nop
nop
xor $38533, %rbx
mov (%r9), %r13w
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_D+0x19d14, %r12
nop
sub %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WC+0x8a14, %r12
nop
nop
nop
nop
inc %r8
movw $0x5152, (%r12)
nop
nop
inc %r14

// Store
mov $0x114a480000000a14, %r14
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovaps %ymm2, (%r14)
nop
and $21062, %rbx

// Faulty Load
mov $0x114a480000000a14, %rdx
nop
nop
sub %r12, %r12
mov (%rdx), %r13w
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'58': 3, 'fe': 1}
58 58 fe 58
*/
