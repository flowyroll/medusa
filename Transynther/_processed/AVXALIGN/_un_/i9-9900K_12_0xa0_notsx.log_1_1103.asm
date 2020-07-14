.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc01, %rsi
lea addresses_D_ht+0x4009, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r13
mov $93, %rcx
rep movsw
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x1a837, %rcx
nop
nop
nop
nop
nop
cmp $7609, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x10e89, %rbp
nop
nop
nop
nop
nop
dec %rax
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x133c9, %r13
nop
nop
inc %r15
movb $0x51, (%r13)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0x2e9, %r15
nop
nop
sub $7568, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r15)
nop
nop
sub %rbx, %rbx

// Store
lea addresses_A+0xbc09, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovaps %ymm3, (%rsi)
nop
nop
nop
cmp $56581, %rbx

// Store
mov $0xb7b, %r11
xor $1348, %r13
movb $0x51, (%r11)
nop
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_normal+0x7809, %rsi
nop
nop
nop
nop
nop
add $4158, %rbx
movb (%rsi), %r10b
nop
sub $37835, %r10

// REPMOV
lea addresses_D+0x1bc09, %rsi
lea addresses_normal+0xc609, %rdi
dec %rbx
mov $117, %rcx
rep movsw
cmp $51178, %rsi

// REPMOV
mov $0x2b3, %rsi
lea addresses_PSE+0x38f9, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $120, %rcx
rep movsl
nop
sub $63938, %rdi

// Store
lea addresses_US+0x209, %r10
nop
and $28255, %rcx
movl $0x51525354, (%r10)
nop
nop
dec %rsi

// Store
mov $0x4ccb450000000619, %r15
clflush (%r15)
nop
nop
nop
nop
add $30308, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r15)
and %rsi, %rsi

// REPMOV
lea addresses_D+0x1ac09, %rsi
lea addresses_US+0x15309, %rdi
nop
and $16711, %r15
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
and $53100, %r13

// Store
lea addresses_UC+0x1eab9, %rdi
nop
xor $29897, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
and $3985, %rbx

// Store
lea addresses_UC+0xb101, %rbp
nop
nop
add %rcx, %rcx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
sub %rbx, %rbx

// Load
mov $0x1aa0cb0000000809, %r10
nop
nop
nop
and %rdi, %rdi
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx

// Exception!!!
nop
nop
xor %r10, %r10
div %r10
nop
nop
nop
nop
nop
xor $61572, %r10

// Faulty Load
lea addresses_normal+0x1809, %r13
nop
add $1419, %rbp
movaps (%r13), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'da': 1}
da
*/
