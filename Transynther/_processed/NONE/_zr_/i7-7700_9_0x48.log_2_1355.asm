.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rsi
lea addresses_WC_ht+0x19f4a, %r12
nop
nop
cmp $37467, %rsi
mov (%r12), %ax
nop
sub %rax, %rax
pop %rsi
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x5eea, %rdx
xor %r15, %r15
movb (%rdx), %r11b
add $16755, %rcx

// Store
lea addresses_D+0xc64a, %r11
nop
add %rcx, %rcx
movl $0x51525354, (%r11)
nop
nop
and %rax, %rax

// REPMOV
lea addresses_US+0xc6f2, %rsi
lea addresses_WT+0x3b2a, %rdi
nop
sub $10771, %r15
mov $51, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_WT+0x1b4a, %rdi
xor $32904, %r13
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'00': 2}
00 00
*/
