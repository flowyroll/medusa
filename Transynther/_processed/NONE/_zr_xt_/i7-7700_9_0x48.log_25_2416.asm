.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x100cf, %rsi
lea addresses_WC_ht+0xff4d, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x19e03, %rsi
lea addresses_A_ht+0x1c243, %rdi
nop
nop
nop
nop
xor $27628, %r10
mov $79, %rcx
rep movsb
nop
nop
add %r8, %r8
lea addresses_A_ht+0xcacf, %r14
nop
nop
nop
nop
nop
add %r9, %r9
movb $0x61, (%r14)
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x1309b, %rcx
nop
nop
dec %r8
mov (%rcx), %r10d
nop
dec %r9
lea addresses_WT_ht+0x19bc3, %r8
clflush (%r8)
nop
nop
inc %rdi
movb (%r8), %r9b
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rdx

// Faulty Load
lea addresses_WT+0x63c3, %rdx
nop
xor %r11, %r11
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'39': 4, '00': 21}
00 39 39 39 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
