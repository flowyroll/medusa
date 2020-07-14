.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19eac, %r11
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, (%r11)
add %r10, %r10
lea addresses_UC_ht+0x3ed1, %rsi
lea addresses_UC_ht+0x15bed, %rdi
clflush (%rsi)
nop
inc %r11
mov $2, %rcx
rep movsb
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x9651, %rsi
lea addresses_UC_ht+0x13251, %rdi
nop
nop
nop
and $20565, %rbp
mov $6, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x10cd1, %rsi
lea addresses_A_ht+0x10091, %rdi
nop
nop
nop
nop
inc %r13
mov $23, %rcx
rep movsw
nop
inc %rsi
lea addresses_A_ht+0x10951, %r13
nop
nop
add %r10, %r10
mov (%r13), %esi
nop
nop
add %r13, %r13
lea addresses_normal_ht+0xe8d1, %r11
nop
nop
nop
nop
nop
sub $63322, %rsi
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
sub %rsi, %rsi
lea addresses_WC_ht+0x7291, %rsi
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x1b8d1, %r13
nop
nop
nop
nop
nop
inc %r10
movb $0x61, (%r13)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x1ccd1, %rsi
lea addresses_UC_ht+0xab51, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r10, %r10
mov $86, %rcx
rep movsb
nop
add $20429, %r13
lea addresses_WT_ht+0xd4fd, %rsi
lea addresses_D_ht+0x19e99, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $61360, %r11
lea addresses_D_ht+0x1ca5c, %rsi
lea addresses_D_ht+0x158d1, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $80, %rcx
rep movsw
add $62581, %r11
lea addresses_WC_ht+0x1c7d1, %rsi
nop
dec %rbp
mov (%rsi), %r13w
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xa8a1, %rcx
nop
inc %r13
mov (%rcx), %r10
nop
nop
nop
nop
add $3096, %rcx
lea addresses_D_ht+0x138d1, %rcx
clflush (%rcx)
nop
and %rdi, %rdi
movw $0x6162, (%rcx)
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_RW+0x31d1, %rdx
nop
nop
cmp $42425, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_UC+0xb651, %rdx
nop
and $35100, %r9
movb (%rdx), %al
nop
nop
nop
and $56930, %rdx

// Store
mov $0x1a99e000000003f5, %r9
add $16698, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r9)
dec %r9

// Faulty Load
lea addresses_US+0xf0d1, %r15
nop
nop
nop
sub %r12, %r12
mov (%r15), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
