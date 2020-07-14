.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1922e, %rsi
lea addresses_D_ht+0x11a2e, %rdi
nop
nop
cmp $52548, %r13
mov $26, %rcx
rep movsq
sub $32524, %r10
lea addresses_UC_ht+0xb906, %rsi
lea addresses_A_ht+0x1bd2e, %rdi
nop
nop
add %rax, %rax
mov $9, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x7c2e, %r10
nop
nop
add $42646, %rbx
mov (%r10), %ax
xor $3929, %rcx
lea addresses_A_ht+0x14ffa, %rsi
lea addresses_UC_ht+0x532e, %rdi
nop
nop
and %r15, %r15
mov $14, %rcx
rep movsw
nop
cmp $60300, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0x1acae, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
nop
nop
nop
add $38451, %rbp

// Load
lea addresses_WC+0xc79e, %rdx
nop
nop
nop
nop
sub $42149, %r12
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
nop
nop
and $33521, %r12

// Store
mov $0xbf6, %r11
nop
nop
sub %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
xor $29700, %rdx

// Faulty Load
lea addresses_A+0x5e2e, %rdx
nop
nop
nop
dec %rdi
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'80': 8, '67': 23, '00': 784, '50': 3, '65': 19, 'fc': 657, '3c': 6, '45': 22, 'de': 7, '46': 45, 'e0': 1, 'ef': 24, '47': 83}
ef fc 00 00 00 47 00 00 fc fc fc fc 00 00 00 00 46 00 00 fc 00 47 00 47 fc 00 00 00 00 00 47 65 00 00 00 00 00 00 00 46 00 47 de 00 00 00 47 00 00 00 fc 00 00 47 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 67 67 00 00 00 00 00 00 00 80 00 00 00 00 00 67 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 fc 00 47 00 00 45 00 00 fc 00 67 00 46 fc 00 00 46 00 47 fc 00 fc fc fc fc fc 00 fc 00 45 fc 00 fc fc fc fc 00 00 fc fc 00 fc fc fc fc fc fc fc 00 fc 00 fc fc 00 00 fc 00 00 fc fc 00 00 00 fc 00 fc fc fc fc fc 00 00 fc fc 00 fc fc fc fc fc 00 fc fc fc fc 00 fc fc fc fc 00 00 46 00 00 00 00 00 fc fc fc fc 00 00 00 00 00 fc fc 00 fc 00 fc fc fc fc fc fc 00 00 fc fc fc fc 00 fc fc 00 00 fc 00 fc fc fc fc fc fc 00 fc ef fc fc fc fc fc fc fc 00 fc fc 00 fc 00 fc fc fc 45 47 00 00 00 00 00 fc fc fc fc fc fc 00 fc fc 00 00 fc fc ef fc 65 47 00 47 47 00 fc fc fc fc ef fc fc fc fc fc fc 00 00 00 65 fc 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 65 00 67 00 00 00 00 00 00 00 00 00 ef 47 00 65 00 00 00 00 47 80 47 47 00 00 de 00 46 00 00 00 00 00 00 00 45 65 3c 00 00 65 00 00 46 47 00 00 00 00 00 00 46 00 00 00 67 47 3c 67 00 00 00 47 00 00 00 00 00 00 00 00 00 fc 00 fc 00 46 00 47 46 46 00 fc fc fc 00 00 fc 00 fc fc fc 46 fc fc fc 00 fc 00 fc 00 fc fc 00 fc fc fc fc 00 fc fc fc fc ef fc fc 00 fc fc fc fc fc fc fc fc fc fc 00 00 fc 00 fc fc fc 00 fc fc fc 00 00 fc fc fc fc fc 00 00 fc fc fc fc fc 00 fc 00 fc fc 00 00 fc fc fc fc fc fc fc fc fc 00 fc fc fc fc fc fc fc 46 fc 47 00 00 00 00 67 00 00 fc fc fc 00 ef fc fc 00 47 47 fc 00 fc fc fc fc fc fc 00 fc fc fc fc 00 fc fc fc 45 fc fc fc fc fc fc fc fc fc fc fc 00 fc fc fc fc fc fc fc fc 00 fc fc fc 00 00 fc fc fc fc fc 00 fc fc fc 00 fc fc fc fc ef fc fc fc fc fc fc fc fc fc fc 00 fc fc fc fc 00 ef fc fc fc fc fc 46 fc fc fc 00 47 46 fc fc 00 00 00 fc 00 fc fc fc fc fc fc fc 00 fc fc fc fc fc fc 47 00 00 fc fc 46 fc fc fc fc fc fc fc fc fc fc 00 00 fc fc fc fc fc fc fc fc fc 45 00 00 fc 00 00 3c 00 00 00 00 00 47 fc 00 00 00 00 00 00 00 00 47 00 65 00 00 00 47 00 00 00 47 00 00 00 00 00 65 00 00 46 00 00 00 80 00 47 00 00 00 3c 00 00 45 00 47 00 00 00 00 65 00 00 de 65 00 00 00 00 00 47 00 46 00 00 00 46 00 00 00 50 00 00 00 00 47 00 00 00 00 00 00 00 fc 47 00 00 fc 65 00 00 fc 00 00 00 00 fc fc fc fc fc fc fc fc fc fc fc 00 00 fc fc fc fc fc fc fc fc fc 00 00 fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc 00 fc fc fc fc fc fc fc fc 00 fc 00 fc fc fc fc 00 00 fc fc fc fc fc 00 00 3c fc fc fc fc 00 00 fc fc 00 fc 00 fc fc 00 00 00 fc fc fc 00 fc fc 00 fc fc fc fc 00 45 00 00 fc ef 00 fc 00 fc fc fc fc 47 00 00 00 00 00 fc fc fc fc 46 fc 00 45 fc ef fc 00 fc ef 00 fc fc fc fc 00 00 00 00 fc fc fc fc fc fc fc fc fc fc fc fc fc fc 00 47 00 00 00 00 00 00 00 00 00 80 47 00 00 00 00 00 00 00 00 00 67 00 47 00 00 46 67 46 de de 00 00 00 00 47 00 00 80 00 00 00 00 65 00 00 00 00 00 00 00 00 00 00 00 fc 00 fc 00 00 67 fc 47 45 00 47 47 67 00 00 00 00 00 fc 00 00 45 00 67 46 00 00 00 80 fc 47 47 00 00
*/
