.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5f94, %r15
nop
sub $40656, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %r15
movntdq %xmm7, (%r15)
nop
add $7913, %r14
lea addresses_normal_ht+0x17296, %rdx
nop
nop
nop
cmp $551, %r10
movw $0x6162, (%rdx)
and %rbx, %rbx
lea addresses_WC_ht+0xc046, %r14
and $56097, %rax
mov (%r14), %r15w
nop
and $12425, %r13
lea addresses_UC_ht+0x8b86, %r13
clflush (%r13)
add $33715, %r10
mov (%r13), %rdx
sub $52582, %r10
lea addresses_WT_ht+0x8e46, %r14
nop
nop
add %rax, %rax
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
sub %r13, %r13
lea addresses_normal_ht+0xfbfe, %rsi
lea addresses_D_ht+0x6c94, %rdi
nop
nop
nop
nop
nop
xor $14964, %r13
mov $122, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $12607, %r10
lea addresses_UC_ht+0x500e, %rbx
nop
nop
nop
cmp $53968, %r13
mov (%rbx), %rsi
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xef8e, %rax
nop
nop
dec %rbx
mov (%rax), %cx
dec %rdi
lea addresses_WT_ht+0x19ec9, %r10
nop
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_A+0x13a46, %r9
nop
add $1571, %rdi
movl $0x51525354, (%r9)

// Exception!!!
nop
mov (0), %rbp
nop
cmp $63376, %rbp

// Store
lea addresses_PSE+0x17096, %rdi
and $51653, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movntdq %xmm7, (%rdi)
add $42432, %rcx

// Store
lea addresses_A+0x14b48, %rax
nop
nop
nop
nop
add $1497, %r11
movb $0x51, (%rax)
xor %rbp, %rbp

// Store
lea addresses_PSE+0x142a2, %r10
nop
nop
nop
nop
xor $61266, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
xor $48250, %rcx

// Load
lea addresses_PSE+0x15346, %r9
nop
nop
nop
nop
sub %rax, %rax
mov (%r9), %r11d
nop
nop
nop
inc %rbp

// Store
mov $0x31fee70000000486, %rax
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%rax)
cmp $47201, %rbp

// Faulty Load
lea addresses_US+0x10e46, %r11
nop
nop
nop
nop
sub $5793, %rax
movb (%r11), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
