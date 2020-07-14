.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x184c6, %r12
nop
nop
nop
nop
nop
dec %rcx
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x19546, %r13
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r13)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x1aa06, %r12
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%r12)
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Store
mov $0xf46, %r14
dec %r10
movw $0x5152, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
add $31793, %r8

// Store
mov $0x415a50000000075e, %r11
nop
nop
nop
nop
nop
sub $16974, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
and $57274, %r14

// Store
lea addresses_WC+0xe776, %r8
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
nop
nop
nop
inc %r9

// Load
lea addresses_PSE+0xb46, %rdi
nop
nop
dec %rcx
mov (%rdi), %r8
nop
nop
nop
nop
nop
cmp $11482, %r11

// Store
lea addresses_A+0x13146, %r8
clflush (%r8)
sub %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
nop
nop
sub $35317, %r11

// Faulty Load
lea addresses_PSE+0x19346, %r14
cmp %r10, %r10
vmovntdqa (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'45': 24}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
