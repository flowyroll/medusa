.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e004, %rax
nop
cmp %rcx, %rcx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
dec %rdi
lea addresses_D_ht+0x131e8, %rsi
lea addresses_UC_ht+0x8804, %rdi
sub %rbx, %rbx
mov $87, %rcx
rep movsq
nop
nop
sub $61865, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x8504, %rsi
lea addresses_D+0x4a04, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $15, %rcx
rep movsl
cmp $5540, %r8

// Load
lea addresses_WC+0x884, %rsi
xor $61990, %r8
mov (%rsi), %cx
nop
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_WT+0x18554, %rsi
nop
nop
nop
xor $64167, %r15
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
nop
and $35548, %r8

// Load
lea addresses_US+0x15bcc, %rbx
nop
nop
nop
nop
nop
dec %r8
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
add $28107, %r15

// Store
mov $0x5ea9c00000000804, %rbp
nop
cmp $30379, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
xor %rdi, %rdi

// Load
mov $0x4c4, %r15
nop
and %rsi, %rsi
vmovntdqa (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
nop
sub %r8, %r8

// Load
mov $0x334daa0000000171, %r15
nop
nop
cmp %rbp, %rbp
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
cmp %rdi, %rdi

// Faulty Load
mov $0x5ea9c00000000804, %rcx
nop
nop
cmp %r15, %r15
mov (%rcx), %di
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'58': 1513, '00': 283}
58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 00 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 00 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 58 00 00 58 00 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58
*/
