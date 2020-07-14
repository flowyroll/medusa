.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xe73a, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0xc955, %rdi
nop
nop
and %r8, %r8
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
dec %r9
lea addresses_A_ht+0xeee2, %rsi
lea addresses_WT_ht+0x17fe2, %rdi
clflush (%rsi)
nop
nop
nop
and %rbp, %rbp
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $43035, %rsi
lea addresses_A_ht+0x1ed62, %r8
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r8), %cx
nop
nop
inc %r9
lea addresses_normal_ht+0x7682, %rsi
lea addresses_normal_ht+0x11946, %rdi
nop
nop
nop
xor $1112, %rbp
mov $103, %rcx
rep movsw
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x296c, %r8
nop
and %r9, %r9
movw $0x6162, (%r8)
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0xab22, %rsi
lea addresses_normal+0x601a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $38783, %r9
mov $112, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_PSE+0xcfe2, %rsi
nop
xor %rcx, %rcx
movaps (%rsi), %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'39': 109, '00': 39, '44': 15, '17': 1, '70': 3, '88': 1, '05': 1, 'c2': 1}
39 39 39 39 00 39 44 17 00 70 39 44 00 00 00 39 39 39 39 39 39 44 44 44 44 39 39 39 39 44 39 39 44 39 00 44 39 39 00 88 39 00 00 05 39 39 00 39 00 39 39 39 39 39 39 39 39 39 39 44 39 39 39 39 39 39 44 39 00 39 00 39 39 00 39 39 39 00 39 39 00 39 39 00 70 39 00 00 70 00 00 39 39 39 39 44 39 39 39 39 44 39 39 39 00 39 39 39 44 39 39 00 00 39 39 39 39 39 39 39 39 39 39 39 39 39 00 39 39 39 39 00 00 00 00 00 39 39 39 39 39 00 00 c2 44 39 39 39 39 39 39 39 39 39 39 00 00 00 39 39 00 39 39 00 39 39 00 39 39 00
*/
