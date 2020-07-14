.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x37b8, %r8
inc %r15
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
nop
and $55867, %rdi
lea addresses_normal_ht+0x13b2a, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $49758, %r14
mov (%rcx), %bx
nop
nop
dec %r8
lea addresses_D_ht+0x43b0, %rsi
lea addresses_WC_ht+0x15a30, %rdi
nop
nop
nop
mfence
mov $125, %rcx
rep movsw
inc %rcx
lea addresses_D_ht+0x11a30, %rsi
lea addresses_UC_ht+0x1e5c0, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $73, %rcx
rep movsb
nop
add %r14, %r14
lea addresses_D_ht+0x1d930, %r14
nop
nop
nop
nop
nop
inc %r15
movb (%r14), %r12b
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x84b0, %r14
nop
nop
nop
nop
sub %r8, %r8
mov (%r14), %si
nop
nop
nop
nop
nop
add $62026, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_D+0xb040, %rcx
nop
nop
nop
nop
nop
cmp $29103, %r11
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_WC+0x8af0, %r14
dec %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovaps %ymm6, (%r14)
nop
xor $46424, %r10

// Store
lea addresses_normal+0xcff0, %rcx
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rcx)
and %rax, %rax

// Store
lea addresses_A+0x3b30, %r11
nop
add $22618, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r11)
nop
nop
cmp $41871, %r8

// Store
lea addresses_UC+0x1f7b0, %r10
nop
nop
nop
nop
xor $22292, %r8
movw $0x5152, (%r10)
nop
nop
and $235, %r10

// Faulty Load
lea addresses_A+0x7e30, %r11
cmp $44859, %rcx
mov (%r11), %r8d
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'00': 5}
00 00 00 00 00
*/
