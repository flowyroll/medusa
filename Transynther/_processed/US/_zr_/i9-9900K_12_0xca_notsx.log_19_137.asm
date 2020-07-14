.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xb59f, %r15
nop
nop
nop
dec %r8
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_D+0x2f1b, %r14
nop
nop
nop
nop
sub $26308, %r12
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
and $13810, %r8

// REPMOV
lea addresses_RW+0x133df, %rsi
mov $0xd5f, %rdi
nop
nop
nop
nop
dec %r11
mov $53, %rcx
rep movsw
and %rcx, %rcx

// Load
mov $0x749, %rdi
sub %r11, %r11
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
and $38067, %r11

// Store
lea addresses_normal+0x18bdf, %rsi
nop
inc %rcx
movw $0x5152, (%rsi)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0x12f27, %r11
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_US+0x153df, %rdi
sub %r15, %r15
mov (%rdi), %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_P'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
