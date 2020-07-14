.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xf0df, %r12
nop
nop
nop
nop
xor %r11, %r11
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x12063, %r13
nop
nop
nop
sub $26886, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
and $31646, %r11
lea addresses_normal_ht+0xad53, %rsi
lea addresses_D_ht+0x9552, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $89, %rcx
rep movsb
nop
cmp $60211, %r12
lea addresses_WT_ht+0x1d51b, %rsi
nop
nop
sub %r12, %r12
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
nop
nop
xor $50422, %r8
lea addresses_A_ht+0x13753, %r13
nop
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r13)
nop
inc %r12
lea addresses_UC_ht+0xb853, %r11
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%r11)
nop
cmp $29264, %r12
lea addresses_WC_ht+0x7f53, %rcx
nop
nop
xor $15751, %rsi
mov (%rcx), %r12w
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x85fb, %rcx
nop
add %r8, %r8
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
xor $1294, %r13
lea addresses_D_ht+0x16d53, %rsi
lea addresses_WC_ht+0x19b53, %rdi
nop
nop
nop
nop
nop
and $43135, %rdx
mov $15, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $62519, %r12
lea addresses_D_ht+0x17b53, %r13
clflush (%r13)
nop
nop
and $55940, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub $20164, %rsi
lea addresses_WT_ht+0x193d3, %rdi
nop
nop
nop
nop
nop
xor $17732, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
nop
sub $26654, %rsi
lea addresses_A_ht+0x6615, %rsi
lea addresses_A_ht+0x2f53, %rdi
clflush (%rdi)
sub %r11, %r11
mov $123, %rcx
rep movsb
nop
nop
nop
cmp $18476, %r11
lea addresses_A_ht+0x6ae6, %rsi
lea addresses_WT_ht+0x12f53, %rdi
nop
nop
sub %rdx, %rdx
mov $36, %rcx
rep movsw
inc %r8
lea addresses_A_ht+0x1ab53, %rdx
nop
nop
nop
nop
mfence
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
dec %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x15373, %rsi
lea addresses_UC+0x1df3f, %rdi
nop
nop
nop
nop
dec %r11
mov $45, %rcx
rep movsq
nop
add %rsi, %rsi

// Faulty Load
lea addresses_D+0x17b53, %r11
nop
nop
add $62399, %r10
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
