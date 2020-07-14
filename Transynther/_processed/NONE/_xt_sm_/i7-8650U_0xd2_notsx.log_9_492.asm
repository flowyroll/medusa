.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe906, %rbx
nop
nop
nop
nop
nop
xor $31820, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0xbb66, %rsi
lea addresses_D_ht+0x13466, %rdi
sub $61319, %r9
mov $0, %rcx
rep movsb
nop
add $44612, %r8
lea addresses_UC_ht+0x2f66, %r9
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r9), %ecx
nop
nop
nop
nop
nop
and $38626, %r8
lea addresses_A_ht+0x1ba76, %rsi
nop
and $13112, %r10
movl $0x61626364, (%rsi)
nop
nop
nop
and $63321, %rdi
lea addresses_A_ht+0x15d6e, %rbx
nop
nop
nop
nop
nop
xor $21686, %rcx
movl $0x61626364, (%rbx)
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x17f66, %rsi
lea addresses_normal_ht+0x7ace, %rdi
nop
nop
nop
add $49880, %r13
mov $52, %rcx
rep movsb
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x15326, %rsi
lea addresses_WT_ht+0xaf26, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $61, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xf20e, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and %r9, %r9
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x50f6, %rbx
nop
add %rsi, %rsi
mov (%rbx), %r13w
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x2e66, %rsi
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
inc %r8
lea addresses_D_ht+0x18d66, %r10
nop
sub $1021, %rsi
mov (%r10), %ebx
nop
nop
nop
nop
cmp $15578, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx

// Store
lea addresses_WT+0xd7e6, %r13
sub $27920, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_WC+0x6be6, %r11
nop
nop
nop
nop
nop
and $4429, %r14
movb $0x51, (%r11)
nop
nop
lfence

// Store
lea addresses_PSE+0xf766, %r11
nop
nop
nop
nop
inc %r13
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_PSE+0xf766, %rax
inc %r15
movl $0x51525354, (%rax)
nop
nop
and %rax, %rax

// Store
lea addresses_WT+0x1cb46, %r14
nop
nop
cmp $16447, %rax
mov $0x5152535455565758, %r11
movq %r11, (%r14)
cmp $23690, %rax

// Store
lea addresses_A+0x4b66, %rbx
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_PSE+0xf766, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
movb (%rcx), %bl
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'54': 9}
54 54 54 54 54 54 54 54 54
*/
