.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1eadd, %rsi
lea addresses_A_ht+0xb770, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $15, %rcx
rep movsb
nop
sub $39288, %r11
lea addresses_normal_ht+0x3fec, %rsi
lea addresses_D_ht+0xa9ed, %rdi
nop
inc %rax
mov $29, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x10c1d, %rdi
and $29592, %r10
mov (%rdi), %dx
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x1e91d, %rax
nop
nop
add %rsi, %rsi
movw $0x6162, (%rax)
nop
nop
inc %rdi
lea addresses_WT_ht+0x1883d, %rsi
lea addresses_A_ht+0x146d1, %rdi
nop
nop
nop
nop
nop
add $44934, %rdx
mov $94, %rcx
rep movsl
nop
nop
xor $48220, %r11
lea addresses_A_ht+0x13f1d, %rsi
lea addresses_normal_ht+0x12a1d, %rdi
clflush (%rdi)
sub %rax, %rax
mov $31, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x19475, %rdx
and %rax, %rax
mov (%rdx), %cx
add $24941, %rsi
lea addresses_WT_ht+0x19a1d, %rsi
lea addresses_normal_ht+0x1b3d, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1021d, %r11
nop
cmp $7898, %r15
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xc09d, %rsi
lea addresses_D_ht+0x1661c, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
and $926, %rcx
lea addresses_WT_ht+0x16691, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rsi
movntdq %xmm5, (%rsi)
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x8edd, %rsi
lea addresses_UC_ht+0x1549d, %rdi
nop
nop
nop
nop
xor $7753, %rax
mov $8, %rcx
rep movsl
nop
nop
nop
and $18227, %rax
lea addresses_D_ht+0x9c91, %rsi
lea addresses_A_ht+0xe7c9, %rdi
nop
nop
cmp %r11, %r11
mov $14, %rcx
rep movsq
nop
nop
nop
nop
sub $64447, %rax
lea addresses_WT_ht+0x3a76, %rsi
lea addresses_WC_ht+0x619d, %rdi
nop
nop
add %r11, %r11
mov $56, %rcx
rep movsb
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rdi

// Faulty Load
lea addresses_UC+0xda1d, %r15
nop
nop
nop
sub %r10, %r10
movups (%r15), %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'44': 2603, '46': 15527, '49': 2455, '45': 1244}
46 45 46 44 46 49 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 44 46 49 46 44 46 44 44 44 46 46 44 46 46 49 46 44 46 49 46 49 46 44 46 44 46 49 46 44 46 46 46 49 46 46 46 46 49 46 46 46 46 45 46 44 46 44 46 49 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 45 46 46 46 46 46 46 46 44 44 44 46 46 46 46 46 46 46 49 46 46 46 46 46 46 44 46 46 45 46 46 49 46 46 46 49 46 49 46 44 46 49 46 49 46 44 46 44 46 49 46 45 46 45 45 46 46 45 49 44 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 49 46 49 46 44 46 46 46 45 46 45 45 46 46 44 46 44 46 49 46 46 46 46 49 46 46 45 46 49 46 49 46 44 44 46 46 46 46 46 46 46 46 46 44 46 49 46 44 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 45 46 46 49 46 46 46 46 46 46 46 46 46 45 46 46 45 46 49 46 44 46 44 46 46 46 46 46 46 45 46 46 49 46 49 46 44 46 49 46 49 46 44 46 44 46 49 46 44 49 46 45 46 46 45 46 46 46 49 49 49 46 45 46 45 46 44 44 49 45 49 46 46 45 46 46 46 44 46 46 45 46 46 46 46 46 44 46 44 46 46 46 46 45 46 46 49 46 44 46 49 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 49 46 46 46 46 49 46 46 46 45 46 46 44 44 44 45 46 45 46 46 49 46 44 46 44 46 46 46 46 46 45 44 46 46 44 44 46 49 46 46 44 46 49 46 44 46 44 44 44 46 46 49 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 49 46 44 46 46 46 46 46 46 46 45 44 49 46 44 46 49 46 49 46 44 44 44 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 49 46 46 46 46 46 45 46 49 46 44 46 46 45 46 46 45 46 49 46 44 46 44 46 49 46 44 46 44 46 45 46 46 49 46 46 46 46 46 46 46 46 46 46 46 49 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 44 46 46 45 46 45 46 46 49 46 44 44 46 45 46 46 46 46 46 46 46 46 46 46 46 49 46 44 46 49 46 49 46 44 46 44 46 49 46 44 46 44 46 46 46 45 46 45 46 49 46 46 44 46 46 46 45 46 44 46 46 44 46 49 46 46 46 46 46 49 46 46 46 46 44 46 44 46 46 46 46 46 49 49 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 44 46 49 46 49 46 44 46 49 46 49 46 44 44 44 46 44 46 45 45 46 46 46 46 46 46 49 46 44 46 44 44 44 46 49 46 46 46 46 46 46 46 46 46 46 46 46 44 46 49 46 44 49 44 46 46 49 46 46 46 49 49 46 49 46 46 46 46 46 46 44 46 46 45 46 49 46 46 49 46 49 46 44 46 49 46 49 46 46 46 46 46 46 46 45 44 44 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 45 46 49 46 44 46 49 46 49 46 44 44 44 46 46 49 44 45 46 46 46 45 46 46 45 46 46 46 46 45 46 44 46 49 46 44 46 44 44 44 46 49 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 44 46 46 46 46 46 49 46 46 49 46 46 44 46 44 49 46 46 44 46 49 46 49 46 44 46 46 45 46 46 45 46 46 46 44 44 44 45 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 45 46 46 46 46 46 46 46 46 46 49 46 46 45 46 46 49 46 49 46 44 46 49 46 49 46 44 46 49 46 49 46 44 46 44 44 44 46 46 46 46 46 46 45 46 46 49 46 46 49 46 49 46 46 49 46
*/
