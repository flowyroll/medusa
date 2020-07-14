.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16ab8, %rsi
lea addresses_WT_ht+0x9bb8, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $26, %rcx
rep movsl
nop
nop
nop
and $23758, %rdx
lea addresses_UC_ht+0x78b8, %rsi
xor %r14, %r14
movw $0x6162, (%rsi)
nop
add %rdx, %rdx
lea addresses_WC_ht+0x7f4c, %r14
nop
nop
nop
dec %r15
mov (%r14), %edx
nop
nop
nop
nop
add $63902, %rsi
lea addresses_normal_ht+0x1ab8, %rsi
lea addresses_A_ht+0x17cd5, %rdi
nop
nop
nop
and $57382, %r11
mov $117, %rcx
rep movsl
nop
nop
nop
xor $1439, %r11
lea addresses_WC_ht+0x192b8, %rdx
nop
cmp %r10, %r10
movl $0x61626364, (%rdx)
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x1c0b8, %rcx
nop
nop
nop
nop
and %r14, %r14
movb (%rcx), %r11b
add %r10, %r10
lea addresses_UC_ht+0x1d488, %rsi
lea addresses_normal_ht+0x38b8, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $98, %rcx
rep movsb
nop
nop
cmp $3223, %r10
lea addresses_normal_ht+0x1caf8, %rsi
lea addresses_WC_ht+0x122c, %rdi
nop
nop
cmp %r14, %r14
mov $90, %rcx
rep movsq
nop
nop
xor $12619, %rsi
lea addresses_WT_ht+0x1b0b8, %r10
nop
nop
xor $55229, %rdx
movw $0x6162, (%r10)
nop
inc %rdi
lea addresses_A_ht+0x166b8, %rsi
lea addresses_WC_ht+0x8b38, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $50, %rcx
rep movsb
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_normal+0x1f0b8, %rdi
nop
nop
nop
nop
cmp $60729, %rcx
movaps (%rdi), %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'00': 24, '44': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00
*/
