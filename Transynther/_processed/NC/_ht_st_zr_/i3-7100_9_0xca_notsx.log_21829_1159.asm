.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xfb61, %rbp
nop
nop
cmp %r14, %r14
movb $0x61, (%rbp)
dec %r12
lea addresses_WC_ht+0x178f9, %rdx
nop
and $60458, %rbp
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x160b, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %rdx
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x19101, %r14
add $39987, %r15
mov (%r14), %rsi
nop
nop
nop
xor $25367, %r14
lea addresses_WC_ht+0xdd81, %rsi
lea addresses_normal_ht+0x1215c, %rdi
nop
nop
nop
nop
add $14353, %r15
mov $82, %rcx
rep movsb
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0xff81, %rsi
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
add $33417, %rdi
lea addresses_WC_ht+0xa601, %rcx
xor $9952, %r12
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
cmp $53098, %rcx
lea addresses_WC_ht+0x1041, %rsi
lea addresses_A_ht+0x2781, %rdi
nop
nop
nop
lfence
mov $82, %rcx
rep movsq
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0xb2cd, %r14
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x18901, %rsi
lea addresses_D_ht+0x12231, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rdx
mov $43, %rcx
rep movsw
nop
and $17890, %rbp
lea addresses_D_ht+0x10971, %rsi
lea addresses_WT_ht+0x9f81, %rdi
nop
add %rdx, %rdx
mov $115, %rcx
rep movsl
nop
nop
add $48797, %r15
lea addresses_normal_ht+0x1d5c1, %rsi
lea addresses_normal_ht+0xcd81, %rdi
clflush (%rdi)
nop
nop
and $2281, %rdx
mov $0, %rcx
rep movsw
nop
lfence
lea addresses_WT_ht+0x2601, %rbp
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
cmp $6509, %rbp
lea addresses_D_ht+0x1a381, %rsi
lea addresses_WT_ht+0x8759, %rdi
nop
nop
nop
nop
nop
add $23355, %r14
mov $108, %rcx
rep movsl
add $1018, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x14b4a, %rsi
lea addresses_D+0xf881, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r10, %r10
mov $26, %rcx
rep movsl
nop
add %rdx, %rdx

// REPMOV
lea addresses_normal+0x1569, %rsi
lea addresses_UC+0x15f81, %rdi
nop
nop
and $8462, %r12
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $26034, %rdx

// Faulty Load
mov $0x56b2fa0000000781, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %r10
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'53': 1, '38': 1, '34': 11775, '46': 2482, '48': 4184, '44': 1, '00': 3376, '32': 9}
00 46 34 46 48 34 48 34 34 34 46 00 34 34 48 34 46 34 34 46 34 48 34 48 34 48 34 48 34 34 48 34 34 46 00 34 34 48 00 34 48 34 48 34 34 34 34 46 46 34 34 00 34 34 34 34 34 48 34 46 34 00 46 46 34 46 00 34 00 34 34 48 00 34 34 46 34 48 34 46 00 34 34 46 48 00 34 00 34 34 48 00 34 34 48 34 34 34 34 46 34 48 34 46 34 34 48 34 48 48 00 34 48 34 34 34 00 00 34 34 34 34 34 34 00 00 34 34 34 46 34 48 00 48 00 34 34 46 00 34 34 48 00 34 48 00 34 00 34 34 46 46 34 34 34 46 00 34 34 48 34 46 34 34 46 34 46 34 48 34 48 34 48 00 34 48 34 48 34 48 34 48 00 34 00 34 48 00 34 34 34 48 34 48 34 48 00 34 46 34 00 34 34 00 00 34 34 48 34 34 34 34 34 34 48 34 34 34 00 34 34 48 00 34 34 48 46 00 00 34 34 34 34 34 46 34 46 34 46 00 34 34 46 34 34 48 34 34 34 34 34 46 00 00 34 34 34 46 34 00 34 34 48 00 34 48 34 46 00 00 34 34 34 48 00 34 34 48 34 34 48 48 00 34 00 00 34 34 34 00 34 34 48 34 48 34 34 48 00 34 34 46 00 00 34 34 48 34 48 00 34 34 00 34 34 46 34 46 34 34 46 34 48 00 34 46 34 34 34 34 48 00 34 48 00 34 48 34 48 00 34 34 48 00 46 34 34 34 34 48 00 34 34 34 46 00 34 00 00 34 34 34 48 00 34 46 34 48 34 48 34 48 34 48 00 34 34 48 00 00 34 34 34 46 34 00 34 34 34 46 00 34 48 34 34 34 46 48 34 46 34 46 46 00 00 34 34 48 00 34 34 00 34 34 48 00 34 00 34 34 46 34 46 34 48 34 48 00 00 34 34 34 34 34 46 34 34 48 34 34 48 34 34 34 46 34 48 34 46 34 34 34 48 34 48 34 48 48 34 34 48 00 34 34 48 00 34 00 34 48 34 48 48 00 34 34 48 00 34 00 34 46 00 34 48 00 34 46 00 34 48 34 34 34 34 46 00 48 34 48 34 46 00 48 00 34 34 48 34 48 00 34 34 48 00 34 34 00 34 34 34 34 34 34 48 34 34 46 46 34 46 34 46 34 34 46 46 00 34 00 00 34 34 34 46 34 34 34 34 46 34 46 34 48 34 48 00 34 00 34 48 34 48 34 34 34 46 34 48 34 34 34 34 48 00 34 48 34 48 48 00 00 34 34 34 48 00 34 48 34 34 34 48 00 34 00 34 00 34 46 48 34 48 00 34 48 34 48 34 34 34 34 48 48 00 34 34 34 34 34 48 34 48 00 34 00 00 34 00 34 34 48 34 34 34 34 34 34 34 34 46 34 48 00 00 34 34 34 48 00 34 34 48 00 34 34 48 34 48 34 48 00 00 34 34 34 34 46 34 48 34 46 34 46 34 46 34 34 46 00 00 34 34 48 00 34 00 00 34 48 00 34 34 48 00 34 00 34 34 34 34 00 34 34 34 34 46 34 46 34 48 34 48 00 34 46 34 34 48 34 34 46 48 34 48 34 48 00 34 48 00 34 34 48 34 48 00 00 34 34 34 46 34 48 48 34 48 00 34 00 48 34 46 46 00 34 00 34 48 34 48 34 48 34 48 34 48 34 48 34 34 34 34 34 34 48 34 34 00 34 34 34 46 00 34 34 48 34 34 34 46 48 00 00 34 34 34 34 34 48 34 48 34 48 34 46 34 46 34 48 34 48 34 48 34 48 00 34 00 34 34 46 34 46 48 34 48 00 34 34 48 34 46 34 48 00 34 34 34 46 34 46 34 34 34 34 34 34 48 00 34 34 46 48 00 34 00 34 34 34 00 34 34 34 46 48 00 34 34 46 34 46 34 00 34 00 34 34 46 34 46 48 34 34 34 34 34 46 34 46 46 34 34 46 00 34 34 00 34 34 48 34 34 34 48 34 46 34 34 46 48 34 48 00 34 00 34 34 48 00 34 34 34 48 34 34 34 46 34 34 00 34 34 34 48 34 48 00 00 34 34 34 34 46 00 34 48 46 34 48 46 00 34 34 48 34 48 34 48 00 48 00 34 34 34 34 46 34 46 34 48 34 48 34 48 34 48 34 48 00 34 48 00 34 48 00 34 34 48 00 34 34 34 48 00 00 34 34 48 34
*/
