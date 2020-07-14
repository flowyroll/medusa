.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18027, %rsi
lea addresses_WC_ht+0x1a7d, %rdi
clflush (%rdi)
nop
nop
add $25188, %r11
mov $64, %rcx
rep movsq
nop
nop
add $46976, %rbx
lea addresses_WC_ht+0xf4df, %rcx
nop
nop
and $56435, %r10
mov (%rcx), %r11d
nop
nop
nop
nop
add $65500, %rsi
lea addresses_A_ht+0x47ff, %r11
nop
nop
nop
and %r8, %r8
movw $0x6162, (%r11)
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x9140, %rsi
lea addresses_UC_ht+0x8260, %rdi
add %rax, %rax
mov $84, %rcx
rep movsq
nop
and %rax, %rax
lea addresses_A_ht+0x73c7, %r8
nop
nop
nop
nop
nop
sub $53631, %rdi
mov (%r8), %rsi
nop
nop
xor $38804, %rcx
lea addresses_D_ht+0x18287, %rsi
nop
nop
sub %r11, %r11
movw $0x6162, (%rsi)
nop
inc %r10
lea addresses_normal_ht+0x5d47, %rcx
nop
nop
nop
inc %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x5427, %rsi
lea addresses_UC+0x12dc7, %rdi
nop
nop
nop
cmp $35511, %rdx
mov $71, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $11629, %r14

// Store
lea addresses_D+0xaa07, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add $64562, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
sub $22162, %r15

// Store
lea addresses_normal+0x104c7, %r15
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%r15)
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_D+0x17bc7, %r14
cmp %rdi, %rdi
movaps (%r14), %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'34': 12194, '00': 1065, '49': 375, '48': 462}
48 49 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 34 49 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 49 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 48 34 48 34 34 34 49 34 48 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 49 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 48 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 49 34 34 34 34 34 48 48 34 34 34 34 34 34 34 34 34 34 34 34 48 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 48 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 49 00 34 34 34 34 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 48 34 34 34 34 34 48 00 00 34 34 34 34 34 34 34 34 49 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 48 49 00 34 48 00 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 00 49 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 48 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 49 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 48 34 34 00 34 34 34 00 34 34 34 49 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 48 49 00 49 34 00 00 00 34 34 00 00 34 00 34 00 34 34 48 00 34 00 00 34 34 34 48 34 34 00 49 34 34 49 34 49 49 34 00 34 49 49 34 34 34 00 48 00 48 34 34 34 00 49 34 34 34 48 00 34 48 34 49 49 34 34 34 34 00 00 34 34 34 00 00 34 00 34 34 49 34 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 49 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 48 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 48 48 00 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 48 00 34 49 00 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 49 34 34 34 34 34 34 34 49 00 34 34 34 34 34 34
*/
