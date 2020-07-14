.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2026, %rsi
lea addresses_WC_ht+0x4e36, %rdi
nop
nop
nop
mfence
mov $20, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $19888, %r10
lea addresses_D_ht+0x12a66, %rbp
dec %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbp)
cmp $26271, %rdi
lea addresses_WC_ht+0x1b7de, %r9
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
add $54304, %rbp
lea addresses_A_ht+0x166e6, %rsi
lea addresses_WC_ht+0x464f, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $82, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x8ec6, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %rcx
movaps %xmm3, (%rcx)
nop
nop
nop
and $61, %rbp
lea addresses_WC_ht+0x5126, %r14
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %r14
movntdq %xmm0, (%r14)
sub $36268, %rbp
lea addresses_UC_ht+0x1c31e, %rsi
lea addresses_A_ht+0x1a826, %rdi
nop
nop
and $57319, %r14
mov $19, %rcx
rep movsl
nop
sub $14125, %rax
lea addresses_D_ht+0x14a86, %r10
cmp $3412, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0xb2be, %rsi
nop
nop
nop
nop
xor $39181, %r9
movw $0x6162, (%rsi)
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0x19026, %r9
cmp %rax, %rax
movb $0x51, (%r9)
cmp $13692, %rbx

// Store
lea addresses_WC+0x1b6bd, %r15
and $34087, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
sub $22243, %rbp

// Faulty Load
lea addresses_UC+0x10826, %r15
nop
nop
nop
nop
nop
inc %r10
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'ac': 218, '47': 2339, '00': 9523, '53': 349, '50': 1, '3e': 1, '80': 12, 'd2': 1, 'c0': 30, 'b2': 1, '06': 1, 'ff': 8816, '5a': 1, '66': 1, '16': 1, 'ea': 1, '28': 1, 'e0': 2, '46': 132, '0e': 2, '45': 249, 'ca': 1, '82': 1, '3c': 129, '14': 1, 'de': 12, '72': 1, '0a': 1, '32': 1}
ff ff 00 ff ff ff ff ff 45 47 00 ff ff ff 00 53 00 ff 00 46 00 00 00 47 ff ff 00 ff ff 00 00 00 ff 00 47 00 ff 00 00 00 00 00 47 ff 00 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 ff ff ff 00 47 00 00 00 00 ff ff ff ff ff ff 00 ff 00 00 00 00 00 ff ff ff ff 00 47 00 ff ff ff 00 00 ff ff 47 00 ff ff 00 00 ff ff ff ff 00 00 ff 00 00 00 ff ff 00 ff ff 47 46 ff ff 00 ff 00 47 ff 47 00 00 ff 00 00 ff 00 ff ff 00 53 ff ff 47 00 ff ff ff 00 00 00 ff ff 00 00 ff 47 45 ff 47 46 00 00 47 00 00 ff 00 ff ff 00 ff ff 47 47 ff 00 ff 00 00 00 00 00 00 00 ff ff 00 00 00 ff 47 ff ff 47 00 ff ff 47 ff ff ff 00 47 47 00 ff 00 47 00 00 00 ff ff ff ff 47 00 00 47 ff 00 00 00 00 ff 00 ff 00 00 ff ff 00 00 00 00 00 ff 47 00 ff 00 00 00 00 ff ff ff 3c 47 ff ff ff ff ff ff 00 00 00 ff 45 00 00 ff ff ff 00 00 ff 45 00 ff 00 00 00 ff 00 ff 3c ff 00 47 00 00 00 ff 00 ff 00 ff ff ff 00 00 00 00 00 53 ff ff ff 00 ff 00 00 00 ff ff 00 ff 00 00 00 00 00 ff ff 00 ff 47 ff 00 00 00 00 00 ff 53 47 00 ff 00 47 ff ff ff ff 00 00 ff ff 00 ff 00 00 46 ff ff 00 00 00 ff ff 00 00 ff 47 00 ff ff ff ff 00 00 00 00 00 ff 00 ff 53 00 47 ff ff 47 ff ff 00 00 00 ff ff 47 ff ff ff 00 ff 00 ff 00 ff 00 45 ff 00 00 ff 00 ff ff 00 ff 00 ff ff 00 00 ff 00 00 00 ff 3c 00 ff 00 53 00 ff 00 00 00 00 ff 00 00 00 00 47 ff 00 ff ff 00 ff ff 00 00 ff 00 ff 47 ff ff 00 ff ff ff 00 ff 00 47 47 47 47 00 ff ff 00 00 ff ff ff 00 ff ff 00 ff ff 00 00 ff 00 00 00 ff ff ff ff 47 47 00 00 00 47 ff 00 ff 47 00 47 ff 47 00 ff ff 00 47 ff 47 ff 47 ff ff 00 ff 53 00 ff ff 00 46 00 ff 53 00 ff ff ff 00 00 ff 00 ff 00 00 00 00 00 ff 00 47 ff 00 00 ff ff 00 47 ff 00 ff ff 47 ff 00 47 ff ff ff 00 00 00 00 00 47 ff 53 00 ff ff ff 00 ff 00 00 ff 00 ff ff ff ff 00 ff 47 00 00 00 00 00 00 00 ff ff 00 47 ff ff 00 45 00 ff ff ff 47 ff ff ff ff ff ff 00 47 47 ff ff ff 00 00 ff ff 00 ff ff ff ff 00 00 ff ff 47 00 00 00 45 00 00 47 47 53 ff 00 ff ff 00 00 ff ff 00 00 ff 47 ff 00 ff 00 ff ff ff 00 ff 00 00 ff ff ff 00 00 ac 47 53 ff 3c ff 47 00 ff 47 00 00 ff ff 00 00 00 00 00 47 00 ff ff ff 00 00 47 00 ff ff 53 47 00 00 47 ff 47 ff 47 ff 47 ff ff 00 ff ff 47 00 ff ff 47 ff ac 00 47 46 00 ff 47 00 ff ff ff ff 00 00 ff 00 ff 00 ff 00 00 00 00 ff ff ff 47 00 00 ff 00 ff 00 00 00 00 00 00 00 ff ff ff 47 47 ff ff 00 00 00 ff ff 00 ff 00 00 ff 00 00 00 00 00 ff 47 00 47 47 ff ff 00 ff 00 00 00 47 00 ff ff 00 00 00 ff 00 53 47 ff 00 00 ff 00 00 ff 00 ff ff 47 00 00 00 00 00 00 ff 00 47 ff 00 ff ff 00 00 ac 47 47 00 47 ff 47 ff ff 47 46 00 00 3c 00 47 ff 00 00 ff ff 00 ff ff 00 ff 00 00 ff ff ff 00 00 47 ff 47 00 ff ff ff 00 47 ff 00 00 00 00 00 00 ff 47 00 47 00 ff 47 00 ac 53 00 00 ff ff 00 c0 ff ff 47 00 00 ff ff 00 00 00 47 ff ff ff ff ff 00 ff 47 ff 47 00 ff ff ff 00 ff ff ff 00 ff 00 ff 00 00 00 ff ff 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 ff ff 47 00 53 00 53 ff ff ff 00 00 ff 47 00 ff ff ff ff 00 00 00 00 ff 47 ff ff 45 ff 00 00 00 47 ff 47 00 00 ff 00 ff ff ff ff ff ff ff 00 47 ff ff ff 00 ff 00 00 00 00 ff ff ff 00 00 ff ff ff
*/
