.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe290, %rsi
lea addresses_D_ht+0x19942, %rdi
clflush (%rsi)
add %r13, %r13
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $32238, %r8
lea addresses_WC_ht+0x1edc0, %r15
nop
nop
nop
nop
cmp $58122, %rax
movl $0x61626364, (%r15)
nop
nop
add $62733, %r8
lea addresses_A_ht+0x150c0, %rax
nop
sub %r15, %r15
mov (%rax), %si
and $13001, %r15
lea addresses_WC_ht+0x1d104, %rsi
nop
nop
nop
nop
add $52851, %rcx
mov (%rsi), %r8w
and %r15, %r15
lea addresses_A_ht+0x125c0, %r8
nop
nop
nop
xor %r13, %r13
movw $0x6162, (%r8)
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x3450, %r8
nop
sub $37361, %r15
movb (%r8), %al
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_D+0x1008, %r13
xor %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_WC+0x167f8, %r14
sub $48264, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r14)
nop
nop
sub $64268, %r14

// Store
mov $0xa00, %r10
cmp %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r10)
nop
add $64188, %rbx

// Store
lea addresses_normal+0x17c30, %rax
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%rax)
sub $4591, %r13

// Store
lea addresses_UC+0x47c0, %rax
nop
nop
sub %r10, %r10
movl $0x51525354, (%rax)
nop
nop
nop
inc %r13

// Store
lea addresses_PSE+0x8190, %r14
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
and $37373, %r10

// Faulty Load
lea addresses_PSE+0x35c0, %r14
nop
nop
nop
dec %rbx
mov (%r14), %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'33': 4}
33 33 33 33
*/
