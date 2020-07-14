.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xffe1, %rcx
nop
nop
nop
nop
nop
cmp $62833, %r8
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
xor $57569, %r14
lea addresses_UC_ht+0xb2e1, %r14
nop
and %r12, %r12
mov (%r14), %r8w
nop
dec %r14
lea addresses_WC_ht+0x1ebe1, %r15
nop
sub %rax, %rax
mov (%r15), %bp
nop
nop
and $61081, %r12
lea addresses_UC_ht+0xda1f, %r15
nop
nop
nop
xor $52633, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
nop
nop
nop
and $61173, %r15
lea addresses_UC_ht+0x1db65, %r12
nop
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%r12)
nop
nop
nop
cmp $54252, %r8
lea addresses_normal_ht+0x19e21, %rcx
nop
sub %r15, %r15
mov (%rcx), %ebp
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0xe1e, %rsi
lea addresses_D_ht+0x1a9c1, %rdi
clflush (%rsi)
nop
nop
nop
sub %r12, %r12
mov $101, %rcx
rep movsb
nop
nop
nop
add $51225, %rcx
lea addresses_WC_ht+0x13c6e, %r12
nop
dec %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
and $59843, %r8
lea addresses_normal_ht+0x102f1, %rcx
nop
nop
nop
nop
sub %r15, %r15
mov (%rcx), %ebp
nop
nop
nop
cmp $63305, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0x4e1, %r15
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
cmp $18927, %rdx

// Store
lea addresses_PSE+0xaae1, %rdi
nop
nop
nop
nop
nop
xor $37800, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
xor $134, %rdi

// Store
lea addresses_UC+0x18ae1, %rdi
nop
nop
nop
nop
xor %r8, %r8
movb $0x51, (%rdi)
nop
xor %r13, %r13

// Store
lea addresses_RW+0x9e99, %rbp
nop
nop
and $62481, %r15
movw $0x5152, (%rbp)
nop
nop
sub %r15, %r15

// Store
lea addresses_UC+0x10ae1, %rdx
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rdx)
nop
dec %r15

// Store
lea addresses_D+0x1081, %r8
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_PSE+0x1c131, %rdi
xor $58590, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
cmp $7485, %rbx

// Store
lea addresses_WT+0xe4b7, %rdi
nop
nop
nop
nop
nop
add $38910, %rdx
movb $0x51, (%rdi)
nop
nop
dec %rbp

// Faulty Load
lea addresses_UC+0x10ae1, %rdi
nop
nop
nop
nop
and %r13, %r13
movb (%rdi), %r8b
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'ea': 320, '58': 21338, 'e9': 171}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e9 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
