.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd8f4, %r12
nop
nop
nop
nop
xor $34238, %rdi
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
inc %rdi
lea addresses_A_ht+0x168f4, %rsi
lea addresses_UC_ht+0xd719, %rdi
nop
nop
xor $1977, %r8
mov $36, %rcx
rep movsw
cmp %r8, %r8
lea addresses_UC_ht+0x15d54, %rsi
lea addresses_WC_ht+0x1dc94, %rdi
nop
nop
nop
sub %r11, %r11
mov $77, %rcx
rep movsl
nop
nop
nop
and $3236, %rdi
lea addresses_UC_ht+0xa34, %r11
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
nop
and $43208, %rdi
lea addresses_A_ht+0x19923, %rbx
nop
nop
nop
and %r8, %r8
mov (%rbx), %ecx
nop
nop
nop
mfence
lea addresses_UC_ht+0x1e8ec, %rcx
xor $56685, %r12
mov (%rcx), %rsi
nop
and %rdi, %rdi
lea addresses_A_ht+0x76f4, %r12
nop
nop
nop
nop
nop
xor %r8, %r8
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and $12394, %rbx
lea addresses_WC_ht+0x12174, %rdi
nop
nop
nop
add $13687, %r12
mov (%rdi), %si
nop
nop
dec %rcx
lea addresses_WT_ht+0x15fb4, %r11
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
sub $59161, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rcx

// Faulty Load
mov $0x1e059f0000000ef4, %r11
nop
nop
nop
nop
nop
inc %r12
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'1a': 1, 'ef': 1, 'bf': 1, 'fc': 1, 'fe': 1, 'fa': 1, '6e': 2, '60': 5, 'a2': 1, 'f1': 1, '80': 1, '0c': 1, '12': 1, '46': 9330, '89': 1, 'de': 1, 'be': 1, '3e': 1, '81': 1, '0e': 1, '2d': 1, '47': 27, 'd2': 1, 'dc': 1, '86': 1, '72': 2, '44': 1, 'd7': 1, '43': 1, '06': 12258, '78': 1, '9e': 1, 'd6': 1, '9c': 1, 'b6': 1, '8e': 1, '00': 173, 'e2': 1, '5e': 1}
46 06 46 46 06 46 46 46 06 46 46 06 46 06 46 46 46 06 46 46 46 46 06 06 46 06 06 06 46 06 46 46 46 06 46 46 06 46 46 46 06 46 46 06 06 06 06 46 46 46 06 06 06 06 46 46 46 06 06 06 46 06 06 06 06 46 46 06 46 46 46 06 46 46 46 46 46 46 46 06 06 46 06 06 46 46 06 46 06 06 46 46 06 06 06 46 46 46 06 46 06 46 46 06 06 06 46 06 46 46 46 06 46 46 46 06 46 46 46 06 46 46 46 46 46 46 46 06 46 06 46 46 06 06 46 46 46 06 46 46 46 06 46 06 06 06 06 46 46 06 46 06 46 06 06 46 46 46 46 46 06 46 06 46 46 06 06 46 46 06 46 46 06 46 46 06 46 06 46 06 46 46 06 46 46 06 46 46 46 06 46 46 06 06 46 46 06 06 46 46 46 06 06 46 46 46 46 46 46 06 46 46 06 46 06 06 06 06 06 46 46 06 46 46 06 46 06 46 06 06 46 46 06 06 06 46 06 46 06 46 06 46 46 46 06 06 06 06 46 46 46 46 46 06 06 06 06 06 46 46 06 46 46 46 46 46 46 06 46 46 46 06 46 46 46 46 46 06 46 46 46 06 46 46 06 46 46 06 46 06 46 00 46 06 46 46 06 46 46 06 46 46 06 06 46 46 46 46 06 46 46 46 06 46 46 06 06 06 06 46 06 06 46 06 46 06 06 46 06 46 46 06 46 06 46 06 46 46 06 06 06 06 46 46 46 46 06 46 46 06 46 06 46 06 46 46 06 46 46 46 46 06 46 06 06 06 46 06 46 46 46 06 46 46 06 46 46 06 46 46 46 06 06 46 46 46 46 46 06 46 46 00 06 06 46 46 46 06 46 46 46 06 06 06 46 46 06 06 06 06 46 46 06 46 46 46 06 06 06 46 06 46 06 06 06 06 46 06 06 06 46 46 06 46 46 46 46 06 06 46 46 06 06 06 46 06 46 46 06 06 46 06 46 06 46 46 06 00 46 46 06 46 46 06 46 06 46 06 06 46 46 06 06 06 46 46 46 06 06 46 46 46 06 46 06 06 46 46 06 46 06 46 06 06 06 06 06 06 06 46 00 06 46 06 06 06 46 46 06 06 46 06 46 46 46 46 46 06 06 46 46 06 06 46 46 06 06 46 06 06 46 06 06 46 06 06 06 06 06 46 06 46 46 06 46 46 06 46 06 06 46 46 46 06 06 46 06 46 06 06 46 46 06 46 06 06 06 46 46 06 46 06 46 06 06 46 06 46 46 46 46 46 46 06 46 00 46 46 06 46 06 46 46 46 06 06 46 06 06 06 46 06 46 06 46 06 06 46 06 46 06 46 06 06 06 00 06 46 46 06 06 46 06 06 46 06 46 06 06 46 46 46 46 46 06 46 46 46 46 06 06 06 46 06 06 06 06 46 06 06 00 06 06 06 46 06 46 46 46 06 46 06 46 46 46 06 46 06 46 46 46 06 06 46 46 06 46 06 06 46 06 06 46 46 46 46 06 06 06 06 00 06 46 46 06 06 46 06 46 06 46 46 46 06 06 46 46 46 46 06 46 46 06 46 46 46 06 06 06 46 46 06 46 06 46 06 06 06 46 06 06 06 46 06 06 46 46 06 46 46 06 46 46 46 46 06 06 46 46 06 46 06 46 06 46 06 46 46 46 06 46 46 06 06 46 46 46 06 46 46 06 46 46 06 46 46 46 46 06 46 46 06 46 46 06 46 46 06 46 06 06 06 46 46 06 06 46 46 06 46 06 46 06 46 06 46 06 06 46 46 46 46 06 06 06 06 46 06 06 00 46 46 46 46 46 06 06 46 06 06 46 06 06 06 46 46 06 06 46 46 46 46 46 06 06 46 46 46 06 46 46 06 06 06 46 06 06 06 06 06 06 46 46 46 06 46 06 46 46 46 46 06 06 46 46 06 06 46 46 46 46 06 46 06 06 06 46 46 06 46 46 46 46 46 46 06 06 06 06 06 46 46 06 46 46 46 06 46 46 06 06 46 46 06 06 06 46 06 06 06 46 46 06 06 06 46 46 06 06 06 06 46 46 46 06 06 46 46 06 46 46 46 06 06 06 46 46 46 06 06 46 46 06 06 46 06 46 46 06 46 06 06 06 06 46 06 46 46 06 46 06 46 06 46 06 46 46 06 46 06 06 46 46 46 06 06 46 46 06 06 46 06 06 46 46 06 46 46 46 06
*/
