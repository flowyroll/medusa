.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xd726, %r8
cmp $51568, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1dce1, %rbp
nop
nop
xor %r12, %r12
movl $0x61626364, (%rbp)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x124a6, %rdx
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
sub $19898, %r9
lea addresses_A_ht+0x2e36, %r11
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x497d, %rsi
lea addresses_D_ht+0x16f26, %rdi
nop
nop
nop
nop
and $23568, %rbp
mov $92, %rcx
rep movsw
nop
nop
sub $8183, %rdi
lea addresses_WC_ht+0x14f16, %rsi
lea addresses_D_ht+0xd326, %rdi
nop
nop
and %r8, %r8
mov $57, %rcx
rep movsl
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x8126, %rsi
lea addresses_A_ht+0x8466, %rdi
nop
nop
nop
cmp $63103, %r12
mov $7, %rcx
rep movsb
nop
nop
dec %rdx
lea addresses_UC_ht+0x19326, %rsi
lea addresses_A_ht+0x1b5b6, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $14, %rcx
rep movsb
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x16326, %rsi
lea addresses_WC_ht+0xf7c6, %rdi
nop
sub %r12, %r12
mov $89, %rcx
rep movsq
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rdi
push %rsi

// Store
mov $0x326, %r12
xor %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x240e390000000796, %r10
nop
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
xor $13220, %rdi

// Load
mov $0x5cdb75000000088a, %r10
cmp $55860, %r9
movb (%r10), %bl
nop
sub $42944, %rsi

// Store
mov $0x28acb40000000722, %rsi
nop
nop
and $28123, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
and $38134, %r13

// Store
lea addresses_A+0x14726, %r10
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
and $36163, %r13

// Faulty Load
lea addresses_PSE+0x18f26, %rdi
nop
xor $52204, %rbx
mov (%rdi), %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'33': 3}
33 33 33
*/
