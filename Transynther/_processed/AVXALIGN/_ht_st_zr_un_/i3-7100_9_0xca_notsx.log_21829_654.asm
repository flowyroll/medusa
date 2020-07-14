.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x310a, %rsi
nop
nop
nop
nop
cmp $1204, %r11
movb $0x61, (%rsi)
nop
dec %rbp
lea addresses_WT_ht+0x1430a, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rdi), %r15d
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x609a, %rbp
nop
nop
nop
nop
nop
and $8107, %r13
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
and %r15, %r15
lea addresses_D_ht+0x1307a, %r13
nop
nop
and $38934, %rsi
movl $0x61626364, (%r13)
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1ab0a, %r13
nop
nop
nop
nop
xor %r11, %r11
movb (%r13), %r15b
nop
nop
nop
nop
add $2765, %rbp
lea addresses_WT_ht+0x1a10a, %rsi
lea addresses_normal_ht+0x13bca, %rdi
nop
nop
nop
nop
xor $22047, %r13
mov $53, %rcx
rep movsq
nop
add $1798, %rdi
lea addresses_A_ht+0x181da, %rbp
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%rbp), %r11b
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x9daa, %rdi
sub $13028, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0xbb0a, %rcx
nop
sub %r11, %r11
mov (%rcx), %bp
nop
nop
nop
xor $18301, %rsi
lea addresses_WC_ht+0x1d1da, %rsi
lea addresses_A_ht+0x1931a, %rdi
cmp $60823, %r15
mov $39, %rcx
rep movsw
nop
add $3364, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_UC+0x6d0a, %r13
sub %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_D+0x9b0a, %rdx
nop
nop
nop
sub $2689, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovaps %ymm3, (%rdx)
nop
nop
nop
nop
nop
and $54998, %rdx

// Faulty Load
lea addresses_PSE+0x15b0a, %rsi
nop
nop
add %r9, %r9
movaps (%rsi), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'45': 1, '6d': 16400, '00': 239, '22': 1, '60': 2, '58': 5184, '5f': 1, '68': 1}
6d 6d 6d 58 58 58 58 6d 58 6d 6d 58 58 6d 6d 58 6d 6d 6d 58 6d 6d 6d 58 58 58 58 6d 6d 58 58 58 6d 58 58 58 58 6d 58 58 6d 58 58 6d 58 6d 58 58 6d 58 58 6d 58 58 58 6d 6d 6d 58 6d 6d 58 58 58 6d 6d 58 58 58 00 6d 6d 58 58 58 6d 58 58 6d 58 58 58 6d 58 58 58 6d 6d 6d 58 58 6d 6d 6d 6d 58 58 58 58 58 58 58 6d 58 58 6d 6d 58 6d 58 58 6d 58 6d 6d 58 58 58 00 6d 6d 58 6d 58 6d 58 58 58 58 6d 58 6d 6d 6d 58 6d 58 6d 58 6d 58 00 6d 6d 6d 58 6d 6d 6d 6d 00 58 6d 6d 58 6d 6d 6d 58 6d 6d 58 58 6d 6d 6d 58 58 58 58 6d 58 6d 58 6d 6d 58 58 58 6d 6d 58 58 58 58 6d 58 6d 58 6d 6d 58 58 58 6d 58 6d 6d 6d 58 58 58 58 58 6d 58 58 58 58 6d 58 58 6d 58 58 58 6d 58 6d 58 6d 58 6d 58 6d 6d 58 58 6d 6d 58 58 6d 6d 6d 6d 6d 58 6d 6d 6d 58 58 6d 58 6d 58 6d 58 6d 58 58 58 6d 6d 58 6d 58 58 6d 6d 58 58 6d 00 6d 6d 6d 6d 6d 6d 6d 58 58 6d 58 58 6d 6d 6d 58 6d 6d 58 58 58 6d 6d 58 6d 58 6d 58 6d 58 00 58 6d 6d 6d 58 58 58 58 6d 58 58 6d 6d 6d 00 6d 6d 58 58 6d 58 58 6d 58 6d 6d 58 6d 58 6d 58 58 6d 6d 6d 58 58 58 58 6d 6d 58 6d 58 6d 58 6d 58 6d 6d 58 58 6d 58 58 58 6d 58 58 6d 6d 58 6d 58 58 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 58 58 6d 6d 58 6d 6d 6d 6d 58 6d 6d 58 58 6d 58 6d 58 6d 58 58 6d 6d 6d 58 6d 58 6d 6d 6d 58 58 58 6d 58 6d 6d 58 6d 6d 6d 6d 58 6d 6d 58 6d 58 6d 6d 58 6d 6d 6d 58 6d 58 58 58 6d 58 58 6d 58 6d 58 58 6d 58 6d 58 58 58 58 58 6d 6d 58 58 6d 58 58 58 6d 6d 6d 6d 58 58 58 58 6d 58 6d 6d 6d 58 58 6d 58 58 58 6d 6d 58 58 6d 6d 58 6d 58 6d 58 6d 58 6d 6d 6d 6d 58 58 58 6d 58 6d 6d 6d 6d 58 6d 6d 00 6d 6d 58 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 58 58 6d 58 6d 6d 6d 6d 58 58 6d 6d 6d 58 6d 58 58 58 6d 6d 58 58 6d 6d 58 58 6d 58 6d 58 6d 58 6d 58 58 6d 58 58 6d 6d 6d 6d 58 6d 58 58 6d 58 58 6d 6d 58 6d 58 6d 58 6d 6d 6d 6d 58 58 6d 6d 6d 58 6d 58 58 6d 6d 6d 58 6d 58 58 00 58 6d 58 58 6d 58 6d 6d 58 6d 58 6d 6d 58 6d 6d 6d 58 58 58 58 58 6d 58 58 58 58 6d 58 58 6d 58 6d 6d 58 58 58 6d 58 58 6d 58 6d 58 6d 58 6d 6d 58 6d 6d 6d 58 6d 6d 58 6d 6d 58 58 58 6d 6d 6d 58 58 6d 6d 6d 6d 58 58 58 58 58 6d 58 6d 58 58 58 6d 6d 58 6d 6d 6d 6d 58 58 6d 58 58 58 58 58 6d 58 58 58 6d 6d 58 6d 6d 6d 58 58 6d 6d 6d 6d 58 58 58 6d 6d 58 6d 58 58 6d 58 6d 58 58 58 6d 58 58 6d 6d 58 6d 58 58 58 6d 58 6d 58 58 6d 6d 58 58 58 58 6d 58 6d 6d 58 58 6d 58 58 6d 58 6d 58 6d 58 58 6d 58 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 58 6d 6d 6d 58 6d 58 6d 58 6d 58 58 6d 58 6d 6d 6d 6d 58 6d 58 6d 58 6d 6d 6d 58 58 6d 58 58 58 6d 58 6d 6d 58 58 58 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 58 6d 6d 58 6d 58 58 58 58 58 6d 58 58 6d 58 6d 58 58 6d 58 6d 58 58 58 6d 6d 6d 58 6d 58 58 58 6d 6d 6d 6d 58 6d 58 6d 58 6d 6d 6d 6d 58 58 58 6d 6d 6d 6d 6d 58 58 58 6d 6d 58 58 58 58 58 6d 58 58 58 6d 58 6d 6d 58 6d 6d 6d 58 58 58 6d 58 6d 58 58 58 58 58 6d 58 58 6d 58 6d 6d 58 6d 6d 6d 58 58 6d 58 6d 58 6d 6d 6d 58 58 6d 6d 6d 6d 58 58 6d 58 6d 58 58 58 6d 6d 58 58 58 6d 6d 58 58 58 58 6d 6d 6d 58 58 6d 6d 6d 58 58 6d 6d 58 6d 6d
*/
