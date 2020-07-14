.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa67, %r14
nop
nop
nop
nop
nop
dec %rdi
mov (%r14), %r11w
nop
nop
inc %rdi
lea addresses_D_ht+0x3877, %rbx
nop
nop
nop
and %r8, %r8
mov (%rbx), %r13d
nop
nop
add $39896, %r11
lea addresses_D_ht+0xf077, %rsi
lea addresses_A_ht+0x1a077, %rdi
nop
nop
dec %rbx
mov $34, %rcx
rep movsb
and $39118, %rcx
lea addresses_D_ht+0x9bf7, %r14
clflush (%r14)
nop
inc %rdi
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
inc %rdi
lea addresses_WC_ht+0xa117, %r8
nop
and %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
inc %rcx
lea addresses_WT_ht+0xe877, %rsi
lea addresses_A_ht+0x14397, %rdi
nop
nop
nop
nop
add $38937, %r14
mov $47, %rcx
rep movsb
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0xf677, %r13
nop
nop
nop
nop
nop
add $20598, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0xd877, %r13
nop
nop
nop
sub $49065, %rbx
movb (%r13), %r14b
nop
sub $12192, %r8
lea addresses_WC_ht+0x17e57, %rcx
nop
nop
inc %r13
mov (%rcx), %r8d
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x19877, %rsi
lea addresses_WT_ht+0x477, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $37, %rcx
rep movsw
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x77, %r8
and $35650, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r8)
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_normal+0x5a8f, %r9
clflush (%r9)
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
nop
and $5358, %rdx

// Store
lea addresses_A+0xf077, %r12
nop
nop
xor $30182, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r12)
nop
nop
xor $26156, %rbp

// Load
lea addresses_RW+0x17287, %rsi
nop
nop
nop
nop
nop
xor $63026, %r15
movb (%rsi), %al
nop
nop
nop
xor $43019, %rbp

// Faulty Load
lea addresses_normal+0x10877, %r9
xor $15896, %r15
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
