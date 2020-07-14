.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x29c5, %rsi
lea addresses_D_ht+0x4093, %rdi
nop
nop
nop
xor $33089, %r9
mov $82, %rcx
rep movsb
nop
nop
nop
xor $56436, %r14
lea addresses_WC_ht+0x11593, %r12
nop
nop
nop
nop
and $7324, %rax
mov (%r12), %ecx
nop
nop
inc %rsi
lea addresses_D_ht+0x1bf93, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $46875, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
add $25877, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1f7b3, %r10
nop
nop
nop
nop
cmp $14271, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)
xor %r13, %r13

// Faulty Load
lea addresses_WC+0x1f893, %r11
nop
nop
xor $399, %r14
mov (%r11), %r10d
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'00': 85}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
