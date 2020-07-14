.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x323e, %r12
nop
nop
nop
nop
sub $36114, %rdi
movl $0x61626364, (%r12)
dec %r14
lea addresses_WT_ht+0xf99e, %rsi
lea addresses_WC_ht+0x1531e, %rdi
sub %rdx, %rdx
mov $51, %rcx
rep movsq
nop
nop
nop
xor $36243, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xc01e, %rdx
nop
nop
nop
nop
and $29886, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
cmp %rdx, %rdx

// REPMOV
lea addresses_UC+0x1b09e, %rsi
lea addresses_WT+0x29e, %rdi
nop
nop
nop
cmp %r8, %r8
mov $3, %rcx
rep movsb
nop
xor $58509, %rbp

// Faulty Load
mov $0x7970e6000000021e, %rdi
nop
nop
nop
nop
add %rbp, %rbp
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'49': 1}
49
*/
