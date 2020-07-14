.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x9d4e, %rbx
nop
nop
nop
add $3725, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x13ece, %r8
mfence
mov $0x6162636465666768, %r15
movq %r15, (%r8)
nop
nop
nop
nop
xor $40807, %rdx
lea addresses_normal_ht+0x14bce, %rsi
add %rcx, %rcx
mov (%rsi), %di
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x4c8e, %r8
clflush (%r8)
nop
nop
nop
add %rdx, %rdx
mov (%r8), %di
nop
nop
nop
nop
xor $48434, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbx
push %rdx
push %rsi

// Faulty Load
lea addresses_A+0xd4e, %r10
nop
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
