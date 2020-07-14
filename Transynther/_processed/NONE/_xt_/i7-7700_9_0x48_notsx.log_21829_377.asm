.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb860, %r15
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x14b8a, %rdi
xor $58304, %rsi
movb (%rdi), %r10b
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1af3a, %r14
nop
nop
and $57933, %r8
mov (%r14), %r15w
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x17d3a, %r15
nop
nop
nop
and $29013, %r10
mov (%r15), %r13w
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xd79e, %r13
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %r13
movaps %xmm6, (%r13)
nop
add %r10, %r10
lea addresses_UC_ht+0x483a, %r15
nop
nop
nop
nop
nop
add $39672, %rsi
movb (%r15), %r14b
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1995a, %r10
nop
inc %r8
mov (%r10), %r14d
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x197ba, %rsi
lea addresses_A_ht+0x523a, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $84, %rcx
rep movsq
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x1145a, %r8
nop
nop
inc %r15
movl $0x61626364, (%r8)
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x11fb8, %r15
cmp %r13, %r13
movb (%r15), %r14b
nop
nop
sub $145, %rdi
lea addresses_D_ht+0x1c7da, %rsi
lea addresses_UC_ht+0x1b1e, %rdi
nop
sub $29345, %r15
mov $122, %rcx
rep movsw
nop
nop
sub $44116, %rdi
lea addresses_D_ht+0xeb7a, %rsi
lea addresses_WC_ht+0x182aa, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
mov $13, %rcx
rep movsl
nop
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x10f3a, %r11
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
cmp $7687, %r11

// Store
lea addresses_D+0x106fa, %rcx
nop
add $60293, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovaps %ymm7, (%rcx)
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_RW+0xd93a, %rdi
nop
nop
nop
nop
nop
dec %r14
mov (%rdi), %ax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
