.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe513, %r10
and %rax, %rax
movl $0x61626364, (%r10)
cmp %r14, %r14
lea addresses_UC_ht+0x16543, %r13
clflush (%r13)
nop
inc %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x8f53, %r8
nop
nop
nop
add $38985, %r9
movb (%r8), %r12b
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x1dbe3, %r10
nop
nop
sub $10449, %r9
mov (%r10), %r8
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x1b4f3, %r13
nop
nop
nop
nop
add $39779, %rax
movw $0x6162, (%r13)
xor $16893, %r13
lea addresses_D_ht+0x128f3, %rsi
lea addresses_D_ht+0xbe23, %rdi
nop
nop
nop
sub $11421, %r13
mov $15, %rcx
rep movsl
nop
nop
inc %r10
lea addresses_WC_ht+0x188f3, %rsi
lea addresses_WT_ht+0x90f3, %rdi
xor %r8, %r8
mov $13, %rcx
rep movsw
nop
inc %r9
lea addresses_WC_ht+0xe0fb, %r10
nop
sub $9374, %r12
movb (%r10), %al
nop
nop
nop
nop
nop
cmp $50617, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15

// Faulty Load
mov $0x8f3, %r13
sub $43460, %r15
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 72}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
