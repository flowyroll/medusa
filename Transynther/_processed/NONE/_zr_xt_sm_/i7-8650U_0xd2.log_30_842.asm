.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x9c1b, %rsi
nop
nop
nop
nop
add %rdi, %rdi
mov (%rsi), %r11d
nop
nop
nop
nop
sub $30145, %rdi

// Load
mov $0x448bdf000000041b, %r9
nop
nop
sub $3735, %rsi
mov (%r9), %bp
nop
nop
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_WT+0xdb, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
add $11319, %rcx

// Store
lea addresses_US+0x1b9db, %rsi
nop
nop
add $55667, %rbx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
sub $44191, %r9

// Load
lea addresses_A+0x73db, %r11
nop
nop
and $65519, %rbp
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
xor $36988, %rbp

// Store
lea addresses_WC+0xfbdb, %rcx
nop
nop
nop
nop
xor $28551, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
and $53902, %rsi

// Faulty Load
lea addresses_WC+0xfbdb, %rbx
clflush (%rbx)
nop
nop
sub %r9, %r9
mov (%rbx), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'58': 29, '00': 1}
58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
