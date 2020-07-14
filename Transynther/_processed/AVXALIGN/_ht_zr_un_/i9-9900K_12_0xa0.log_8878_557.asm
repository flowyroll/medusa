.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18593, %r15
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r15)
nop
nop
nop
nop
sub $27067, %r15
lea addresses_A_ht+0x6793, %r13
nop
nop
inc %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
sub $7486, %r15
lea addresses_WC_ht+0xaa93, %r9
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%r9)
nop
add %r9, %r9
lea addresses_WT_ht+0x6df3, %rsi
lea addresses_normal_ht+0x193, %rdi
nop
dec %rbp
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x10d53, %rsi
lea addresses_WC_ht+0x15c51, %rdi
add %r11, %r11
mov $13, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $36251, %rdx
lea addresses_A_ht+0x6b63, %rsi
lea addresses_WC_ht+0x126fb, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $98, %rcx
rep movsb
nop
nop
sub $5727, %r9
lea addresses_WC_ht+0x153b3, %r11
nop
nop
and $20770, %rsi
mov (%r11), %r9
nop
inc %r15
lea addresses_D_ht+0x1e2c7, %rcx
nop
nop
nop
and $39571, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1e693, %r9
nop
nop
sub $32069, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r9
movntdq %xmm4, (%r9)
nop
nop
nop
nop
sub $62465, %rdx
lea addresses_WT_ht+0x1ad93, %rsi
lea addresses_WC_ht+0x15f13, %rdi
nop
nop
nop
dec %r13
mov $13, %rcx
rep movsl
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0xa293, %r15
nop
dec %r11
movw $0x6162, (%r15)
nop
nop
nop
nop
add $21554, %r15
lea addresses_normal_ht+0x8df, %rsi
nop
nop
xor $61081, %rdi
movb (%rsi), %r11b
nop
nop
nop
nop
cmp $22154, %r15
lea addresses_WT_ht+0xa12b, %rsi
lea addresses_UC_ht+0x1b5f3, %rdi
clflush (%rdi)
nop
nop
xor %rdx, %rdx
mov $9, %rcx
rep movsq
add %r9, %r9
lea addresses_UC_ht+0x1911a, %rbp
nop
nop
nop
nop
xor $5452, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm1
movups %xmm1, (%rbp)
and %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_normal+0x5193, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r15), %r14d
and %r15, %r15

// Load
lea addresses_D+0x14d93, %rcx
add %r9, %r9
mov (%rcx), %ebx
nop
sub $61760, %rcx

// Load
mov $0xc71e90000000393, %r14
clflush (%r14)
nop
nop
xor $43332, %rdx
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_D+0xf993, %r14
nop
cmp $4443, %rbx
movb $0x51, (%r14)
add $1807, %rax

// Store
lea addresses_WC+0xe6a0, %r15
sub $63387, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
sub $59130, %rbx

// Load
lea addresses_A+0x10793, %rdx
clflush (%rdx)
nop
dec %rcx
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_normal+0x5193, %rcx
nop
nop
nop
nop
nop
cmp %r15, %r15
vmovaps (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'48': 1, '49': 205, '08': 2845, '00': 1, '45': 3449, '72': 2377}
00 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 08 08 08 08 08 08 08 08 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 08 08 08 08 08 08 08 08 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 08 08 08 08 08 45 45 45 45 45 45 45 45 45 45 08 08 08 08 08 45 45 45 08 08 08 08 08 08 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 08 08 08 08 08 08 45 08 08 08 49 49 49 49 49 49 49 49 49 08 08 08 08 45 45 45 45 72 72 72 72 72 72 72 72 72 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 45 45 45 45 72 72 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 72 72 72 72 72 72 72 72 08 08 08 08 08 08 72 72 72 72 72 72 72 72 72 72 72 72 72 45 45 45 45 45 45 45 08 08 08 08 08 08 08 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 08 08 08 08 08 45 45 45 45 45 45 45 45 45 45 49 49 49 49 49 49 49 49 49 72 72 72 72 45 45 45 45 45 45 45 45 45 45 45 45 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 08 45 45 45 45 45 45 45 45 45 45 45 45 45 08 08 08 45 45 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 08 08 08 45 72 72 72 72 72 72 72 72 72 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 72 72 72 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 72 72 72 72 72 45 45 45 45 45 45 72 72 72 72 72 72 72 72 72 72 72 45 72 45 45 45 45 45 45 45 45 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 45 45 45 45 45 45 45 45 45 72 72 72 72 72 72 72 08 08 08 08 08 08 08 72 72 72 72 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 45 45 45 45 45 45 45 45 72 72 72 72 72 72 72 72 72 72 72 72 72 45 45 45 45 45 45 72 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 72 72 72 72 72 72 72 45 72 72 72 72 72 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 72 72 72 72 72 45 45 45 45 45 72 72 72 45 72 72 72 72 72 72 72 72 72 72 72 72 72 45 72 72 72 72 45 72 72 72 72 72 72 45 45 45 45 45 45 45 72 72 72 72 72 72 72 72 49 49 49 49 49 49 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 08 08 08 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 45 08 08 08 08 08 08 72 45 72 72 08 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 45 45 45 45 45 45 45 45 45 08 08 08 08 08 08 08 08 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 45 45 45 45 45 45 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 45 45 45 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 45 08 08 08 08 08 08 08 08 08 72 72 72 72 72 72 72 72 72 72 72 72 72 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 08 08 08
*/
