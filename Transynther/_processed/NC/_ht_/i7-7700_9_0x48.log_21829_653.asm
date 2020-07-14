.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x23b3, %rsi
nop
nop
nop
sub $17846, %rdi
movb (%rsi), %r10b
and %r15, %r15
lea addresses_normal_ht+0x1b1b3, %r10
nop
sub %r8, %r8
movb $0x61, (%r10)
nop
nop
nop
nop
nop
xor $60805, %rdi
lea addresses_normal_ht+0x11d47, %r8
nop
nop
nop
cmp %rdx, %rdx
mov (%r8), %r15w
nop
sub $4327, %r8
lea addresses_normal_ht+0x132fb, %r13
nop
and %r10, %r10
movw $0x6162, (%r13)
cmp %r8, %r8
lea addresses_normal_ht+0x1096b, %r10
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0xb5b3, %r8
nop
nop
nop
inc %rdi
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1603c, %rsi
lea addresses_WC_ht+0x169b3, %rdi
nop
nop
nop
nop
nop
add $21434, %r10
mov $105, %rcx
rep movsq
nop
nop
nop
nop
nop
add $24594, %rdx
lea addresses_D_ht+0xbcb3, %r15
nop
nop
nop
nop
add $16384, %rdx
mov (%r15), %cx
nop
nop
cmp $48839, %r15
lea addresses_A_ht+0x35b3, %r8
nop
nop
nop
nop
and %r10, %r10
mov (%r8), %cx
cmp $56152, %r10
lea addresses_WC_ht+0x1abf3, %rcx
nop
nop
nop
cmp $43709, %r13
movl $0x61626364, (%rcx)
cmp %r15, %r15
lea addresses_WT_ht+0x9393, %rcx
inc %r15
mov (%rcx), %si
nop
nop
nop
cmp $12556, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbp
push %rdx
push %rsi

// Faulty Load
mov $0x1f59bb0000000bb3, %rdx
nop
nop
nop
xor %r11, %r11
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': True, 'NT': False}}
{'49': 6533, '47': 15296}
47 49 49 47 47 47 47 47 49 49 49 47 49 47 47 47 47 49 47 47 47 47 47 49 49 49 47 49 47 47 47 47 47 49 49 49 47 47 47 47 47 47 47 49 47 47 47 47 49 49 47 47 47 47 47 47 49 47 47 47 47 47 49 47 49 47 47 47 49 47 47 47 49 49 47 49 47 47 49 47 47 49 47 49 49 47 47 47 47 47 49 49 47 49 49 47 47 47 49 47 49 49 47 47 47 47 49 49 49 47 47 49 47 49 47 47 49 49 47 47 47 49 49 47 47 47 47 49 47 47 47 47 47 47 47 47 47 49 49 47 47 47 47 49 47 47 47 49 47 49 49 47 47 49 47 47 47 47 47 49 47 49 47 47 47 49 47 49 49 49 47 47 47 47 47 47 47 47 49 49 47 47 47 47 47 49 49 47 47 47 47 49 49 47 49 47 49 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 49 49 47 47 47 47 47 49 47 49 47 49 47 47 49 49 47 47 47 47 49 47 47 47 47 47 47 49 49 47 49 49 47 47 49 49 47 47 47 47 47 47 47 49 47 47 47 47 49 47 47 49 47 49 49 49 49 49 47 49 47 47 47 49 47 47 49 47 47 47 49 47 47 47 47 47 47 47 47 47 49 49 49 47 47 47 47 49 49 47 47 47 47 47 49 47 47 49 47 47 49 47 47 49 49 47 47 47 47 49 49 47 47 49 47 49 47 47 47 47 47 47 47 49 47 47 47 49 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 49 47 47 47 47 49 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 47 49 47 47 47 49 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 49 49 47 49 49 47 47 47 47 47 47 47 47 49 49 47 47 49 47 47 47 47 47 47 47 47 47 47 47 49 47 49 49 47 49 47 47 47 49 47 49 47 49 49 47 47 47 47 47 47 47 47 49 47 49 49 49 47 47 47 47 47 49 49 47 47 47 47 47 47 47 47 49 47 47 49 47 47 49 49 49 47 49 47 49 49 49 49 49 49 47 47 47 47 47 47 47 47 47 47 47 47 47 49 49 47 47 47 47 49 49 47 47 47 47 49 49 47 49 47 47 47 47 49 49 47 47 47 47 49 47 47 47 47 49 47 49 47 49 47 47 47 49 49 47 49 47 47 49 49 47 47 47 49 49 49 47 49 47 47 47 47 47 47 47 47 47 49 47 47 49 47 47 47 49 47 47 47 47 47 49 47 47 49 47 47 49 49 49 47 47 47 49 49 49 49 47 47 49 47 49 47 49 47 49 47 49 49 49 47 49 47 47 47 49 47 49 49 49 49 47 47 47 47 49 49 49 47 47 47 47 47 49 49 47 47 47 47 47 47 47 47 47 47 47 47 49 49 49 47 47 49 47 49 47 47 47 47 49 49 47 47 47 49 47 47 47 47 49 49 47 47 47 47 47 47 47 49 47 47 47 47 49 47 49 47 49 49 47 47 47 49 49 47 47 47 49 49 49 47 49 47 47 47 47 47 47 47 47 47 47 47 49 47 47 49 47 47 49 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 49 49 47 47 49 47 47 47 49 47 49 49 49 47 47 47 47 47 47 49 49 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 47 47 49 47 49 49 49 49 47 47 47 47 47 49 49 47 47 47 47 49 49 47 49 47 47 49 49 49 49 47 49 47 47 47 49 49 47 47 47 47 49 47 47 47 47 47 49 47 47 49 49 47 47 47 47 49 47 49 49 47 49 47 47 47 47 47 47 47 47 47 47 47 47 49 49 47 47 47 47 47 49 47 47 47 49 49 49 47 47 47 47 47 49 49 49 47 47 49 47 47 49 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 49 47 49 47 47 47 49 49 49 47 47 47 49 49 47 47 49 47 47 49 47 47 47 47 47 49 47 47 47 47 49 47 47 47 49 47 47 47 47 47 47 47 47 47 47 49 47 47 47 49 47 49 49 47 47 49 47 47 47 47 47 47 49 47 47 47 47 49 47 47 47 47 47 49 47 47 47 47 47 47 47 49 47 47 47 47 47 49 47 47 47 47 47 47 49
*/
