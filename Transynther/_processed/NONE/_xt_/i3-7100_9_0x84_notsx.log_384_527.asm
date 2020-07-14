.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d742, %r11
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
nop
cmp $12009, %rsi
lea addresses_WC_ht+0x1def2, %r10
nop
nop
nop
nop
and $64343, %r12
movl $0x61626364, (%r10)
nop
add %rdi, %rdi
lea addresses_D_ht+0x143d2, %r10
nop
dec %rdi
mov (%r10), %rax
nop
nop
add $19378, %rsi
lea addresses_normal_ht+0xdb72, %rax
nop
nop
nop
nop
nop
inc %rdi
movb $0x61, (%rax)
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x132d2, %rsi
lea addresses_WT_ht+0x19872, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $111, %rcx
rep movsb
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x109fe, %rax
clflush (%rax)
nop
add $8891, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
xor %rsi, %rsi

// Load
lea addresses_PSE+0x12b72, %rdx
clflush (%rdx)
add $52018, %r11
mov (%rdx), %r15w
nop
sub %rdi, %rdi

// Load
lea addresses_D+0x5574, %r11
nop
nop
nop
nop
cmp $47367, %rsi
mov (%r11), %r9d
nop
nop
nop
sub $65169, %r15

// Store
lea addresses_RW+0x1ca3a, %r9
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb $0x51, (%r9)
nop
and $37687, %rax

// Load
lea addresses_WT+0xf04a, %r11
nop
add %rax, %rax
vmovntdqa (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
sub %rax, %rax

// Faulty Load
lea addresses_PSE+0x12b72, %rax
nop
nop
nop
sub $3097, %r9
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'33': 384}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
