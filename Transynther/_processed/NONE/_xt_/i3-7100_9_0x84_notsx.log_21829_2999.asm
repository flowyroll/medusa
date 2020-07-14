.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6298, %r13
clflush (%r13)
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
xor $6973, %rsi
lea addresses_normal_ht+0x19598, %rcx
nop
and %rbx, %rbx
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
sub $5822, %rdi
lea addresses_normal_ht+0x18518, %r10
nop
nop
nop
dec %rbx
movw $0x6162, (%r10)
nop
add %rbx, %rbx
lea addresses_A_ht+0x1e998, %rsi
lea addresses_UC_ht+0x1b698, %rdi
nop
nop
nop
sub $823, %r15
mov $36, %rcx
rep movsq
nop
add %rsi, %rsi
lea addresses_A_ht+0x1de98, %rsi
lea addresses_WT_ht+0x15d47, %rdi
and $55036, %r13
mov $37, %rcx
rep movsb
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x16998, %rsi
lea addresses_D_ht+0x10958, %rdi
clflush (%rsi)
nop
nop
dec %r13
mov $8, %rcx
rep movsq
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x17462, %rcx
clflush (%rcx)
nop
nop
add $22703, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x13198, %rcx
nop
nop
nop
nop
inc %rsi
mov (%rcx), %r15w
nop
dec %r15
lea addresses_WC_ht+0xc998, %rsi
lea addresses_UC_ht+0x1c718, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $9, %rcx
rep movsw
nop
add %r10, %r10
lea addresses_normal_ht+0x6158, %rsi
nop
nop
nop
dec %r15
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
add $9655, %rsi
lea addresses_WT_ht+0xc500, %rcx
nop
xor $37460, %r13
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x9dc0, %rdx
nop
nop
nop
nop
cmp $57969, %rbx
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
cmp $4372, %rdi
lea addresses_normal_ht+0x8498, %rsi
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rsi), %edi
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x9998, %rbx
cmp $47374, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
and $53820, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_RW+0x13998, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
