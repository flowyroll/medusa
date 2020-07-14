.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa0e1, %rsi
lea addresses_WC_ht+0xbbc1, %rdi
nop
nop
add %rdx, %rdx
mov $12, %rcx
rep movsw
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x83c3, %r13
cmp $30805, %rsi
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x11ec1, %r13
nop
nop
xor $63609, %r8
mov (%r13), %dx
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0xa001, %rsi
lea addresses_WT_ht+0xa448, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $38912, %r11
mov $116, %rcx
rep movsb
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x13ed1, %rsi
lea addresses_WC_ht+0x110bd, %rdi
nop
nop
xor %r13, %r13
mov $2, %rcx
rep movsl
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x1e531, %rsi
lea addresses_WC_ht+0x8b41, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $125, %rcx
rep movsw
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x10401, %rsi
lea addresses_normal_ht+0xad91, %rdi
nop
nop
add $45560, %r11
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
and $23771, %rdx
lea addresses_UC_ht+0xc4c1, %r13
nop
nop
nop
xor $16684, %rdx
mov (%r13), %r11d
nop
cmp $7159, %r12
lea addresses_A_ht+0x19c1, %rsi
nop
nop
sub %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
add $38182, %rdi
lea addresses_WT_ht+0x13779, %r8
nop
nop
inc %r13
mov (%r8), %r12d
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x9bc1, %rsi
lea addresses_UC_ht+0xebc1, %rdi
nop
nop
inc %r13
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x15581, %rdx
nop
nop
inc %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
cmp $455, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xd6c1, %r10
clflush (%r10)
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
nop
cmp $37556, %rbx

// Store
lea addresses_UC+0x19949, %rbp
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
cmp $56349, %rdi

// Load
lea addresses_A+0x42c1, %r9
nop
nop
dec %r11
mov (%r9), %rbp
sub $10311, %r11

// Faulty Load
lea addresses_A+0xfbc1, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov (%rdi), %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'00': 4372}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
