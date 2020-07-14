.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x12226, %rdi
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
cmp $26292, %r12
lea addresses_WT_ht+0x10de6, %rsi
lea addresses_UC_ht+0xe986, %rdi
nop
nop
nop
cmp $53378, %rdx
mov $20, %rcx
rep movsb
xor $36114, %rcx
lea addresses_WC_ht+0x11a86, %rsi
lea addresses_D_ht+0x1eb06, %rdi
nop
cmp $10398, %rbp
mov $86, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_UC_ht+0x14de6, %rbx
nop
nop
and $37098, %r12
mov (%rbx), %ecx
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x25e6, %rsi
lea addresses_A_ht+0x7730, %rdi
clflush (%rsi)
nop
cmp $26044, %r9
mov $21, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1ade6, %rsi
lea addresses_UC_ht+0x21e6, %rdi
nop
cmp $31437, %rbx
mov $87, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x10de6, %rcx
dec %r9
movb (%rcx), %r12b
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1e4e6, %r9
clflush (%r9)
nop
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %r9
movaps %xmm6, (%r9)
nop
nop
and $38420, %rdi
lea addresses_D_ht+0x6de6, %rsi
lea addresses_A_ht+0x1c9e6, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $85, %rcx
rep movsq
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0xed36, %rsi
lea addresses_UC_ht+0x108c6, %rdi
add $29771, %rbp
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x6736, %rsi
lea addresses_normal_ht+0x5f82, %rdi
clflush (%rsi)
nop
nop
lfence
mov $33, %rcx
rep movsw
nop
nop
nop
sub $47177, %rcx
lea addresses_WC_ht+0x13433, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rdx)
sub $59241, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x145b6, %rsi
lea addresses_A+0x1872e, %rdi
and %r9, %r9
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $32602, %rdx

// Faulty Load
mov $0xde6, %rsi
nop
nop
nop
nop
inc %r9
vmovaps (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'36': 20872, '00': 863, '49': 1, '46': 93}
36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 46 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 46 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
