.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2bb1, %rsi
lea addresses_UC_ht+0x11831, %rdi
clflush (%rsi)
nop
nop
nop
xor $62556, %r9
mov $126, %rcx
rep movsb
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x84cd, %rsi
lea addresses_WT_ht+0x1bf31, %rdi
nop
nop
sub $48870, %rbp
mov $48, %rcx
rep movsw
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x15731, %rbx
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xfab1, %rdi
nop
nop
nop
sub $31213, %rsi
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
cmp $24265, %rdi
lea addresses_WC_ht+0xc331, %rcx
nop
nop
nop
nop
and $7504, %rsi
mov (%rcx), %bp
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x411ba70000000631, %rbx
clflush (%rbx)
nop
nop
nop
and $34481, %rcx
movw $0x5152, (%rbx)
nop
cmp $33922, %rdx

// Store
mov $0xe85, %rcx
nop
nop
nop
cmp $29213, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
cmp $55106, %rbx

// Load
lea addresses_RW+0x1d04b, %r14
nop
nop
nop
add $45821, %r13
mov (%r14), %rdx
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_D+0x6e31, %rdx
nop
nop
nop
nop
nop
add %r13, %r13
movaps (%rdx), %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
