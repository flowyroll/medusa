.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8068, %rsi
lea addresses_UC_ht+0xec68, %rdi
nop
nop
nop
nop
and $35098, %r14
mov $22, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x18c68, %rbx
add %rcx, %rcx
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x38a8, %rbx
nop
dec %rbp
movb $0x61, (%rbx)
nop
and %rsi, %rsi
lea addresses_normal_ht+0xc468, %rsi
lea addresses_A_ht+0x17b90, %rdi
xor $15826, %rax
mov $85, %rcx
rep movsl
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0x1ac68, %r11
nop
nop
cmp %rax, %rax
movb $0x51, (%r11)
nop
nop
xor %rax, %rax

// Store
lea addresses_PSE+0x19e08, %rbx
xor $11122, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
dec %r10

// Store
mov $0x7d804f0000000680, %r15
nop
nop
and $56406, %rcx
movl $0x51525354, (%r15)
nop
nop
nop
dec %r15

// Store
lea addresses_UC+0xdc68, %r11
xor $53289, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_US+0x1ac68, %rbx
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rbx), %ax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'51': 1468, '58': 20360, '34': 1}
58 58 58 51 58 58 58 58 58 51 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 51 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 51 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 58 58 51 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 51 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 51 58 51 58 58 58 51 58 58 51 51 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 58 51 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 51 58 58 51 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 51 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
