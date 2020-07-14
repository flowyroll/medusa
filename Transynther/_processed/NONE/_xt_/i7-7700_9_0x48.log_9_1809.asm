.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xa881, %rsi
lea addresses_WC_ht+0xe0c1, %rdi
nop
nop
xor %r12, %r12
mov $51, %rcx
rep movsl
nop
nop
dec %rdx
lea addresses_UC_ht+0x10ac1, %rsi
lea addresses_UC_ht+0xae41, %rdi
nop
nop
sub $34873, %r9
mov $61, %rcx
rep movsw
cmp $32166, %r12
lea addresses_normal_ht+0xb411, %rsi
nop
nop
and $44952, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %rsi
movaps %xmm7, (%rsi)
nop
nop
nop
nop
cmp $4429, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x80c1, %rsi
mov $0x22de980000000d71, %rdi
nop
nop
add %r12, %r12
mov $30, %rcx
rep movsw
nop
nop
add %rsi, %rsi

// Store
lea addresses_normal+0x1c4c1, %rcx
nop
nop
nop
nop
add $49708, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_normal+0x6cc1, %rbp
nop
cmp $40745, %r12
mov (%rbp), %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'34': 9}
34 34 34 34 34 34 34 34 34
*/
