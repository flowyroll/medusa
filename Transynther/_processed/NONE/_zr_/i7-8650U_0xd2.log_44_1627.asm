.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1dd47, %rbx
nop
nop
add %r14, %r14
mov (%rbx), %r12w
nop
sub $8042, %rbx
lea addresses_WC_ht+0x135b7, %rsi
lea addresses_WT_ht+0xb0b5, %rdi
nop
nop
nop
nop
nop
cmp $17097, %r11
mov $88, %rcx
rep movsb
add $14159, %r12
lea addresses_UC_ht+0xf747, %rdi
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x9d5f, %rsi
lea addresses_normal+0x2f47, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $82, %rcx
rep movsb
dec %rdx

// Store
mov $0x671a8800000001e7, %rcx
nop
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $62374, %rcx

// Store
lea addresses_WT+0x14f47, %rdi
nop
nop
nop
nop
add $34591, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
inc %rdx

// Store
mov $0xb87, %rsi
clflush (%rsi)
sub $52680, %rdi
movb $0x51, (%rsi)
dec %r15

// Load
lea addresses_PSE+0x421b, %rsi
nop
nop
add %rdx, %rdx
mov (%rsi), %r8w
nop
nop
sub $4012, %rcx

// Faulty Load
lea addresses_WC+0x1d747, %rsi
xor $59327, %r8
mov (%rsi), %edx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 44}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
