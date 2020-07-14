.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe20e, %r9
nop
sub $7128, %r12
mov (%r9), %si
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xf04e, %rsi
lea addresses_D_ht+0xb38e, %rdi
dec %r12
mov $94, %rcx
rep movsw
nop
and $53417, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rdx

// Store
lea addresses_WC+0x11d0e, %r12
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, (%r12)
dec %r11

// Load
lea addresses_RW+0x163a1, %r12
nop
nop
nop
nop
dec %r14
mov (%r12), %r15d
nop
nop
xor $57263, %r12

// Store
mov $0x692900000007bc, %rdx
nop
inc %r12
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
cmp $52330, %rax

// Load
mov $0x3647c6000000098e, %r12
nop
nop
nop
dec %r15
movups (%r12), %xmm3
vpextrq $1, %xmm3, %r14
add %r14, %r14

// Store
lea addresses_normal+0x1338e, %r11
nop
cmp $4697, %r12
movl $0x51525354, (%r11)
xor $32323, %r15

// Store
lea addresses_A+0xa38e, %rax
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub $60808, %rdx

// Store
lea addresses_RW+0x738e, %r11
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
nop
nop
nop
cmp $30273, %r15

// Store
lea addresses_D+0x898e, %r14
nop
nop
nop
nop
nop
xor $5459, %rax
movb $0x51, (%r14)
nop
and %r11, %r11

// Store
mov $0x11fe1d000000074e, %rax
inc %r11
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_normal+0xfb8e, %r14
add $37897, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movaps %xmm3, (%r14)
nop
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_normal+0xfb8e, %r15
and %r12, %r12
mov (%r15), %r11d
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'58': 6}
58 58 58 58 58 58
*/
