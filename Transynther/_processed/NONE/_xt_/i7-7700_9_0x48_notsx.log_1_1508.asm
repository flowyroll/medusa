.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xef51, %rsi
lea addresses_WT_ht+0x179ab, %rdi
nop
sub $4918, %rdx
mov $22, %rcx
rep movsb
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x4bd3, %r9
nop
cmp %rbp, %rbp
mov (%r9), %si
nop
nop
and $11204, %r9
lea addresses_normal_ht+0x19d03, %r11
nop
nop
nop
lfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r11)
dec %rcx
lea addresses_A_ht+0x181d3, %rsi
lea addresses_WC_ht+0x11bd3, %rdi
nop
nop
nop
and %rdx, %rdx
mov $65, %rcx
rep movsb
nop
nop
nop
sub $17064, %rsi
lea addresses_A_ht+0x9c93, %rsi
lea addresses_D_ht+0x6553, %rdi
nop
nop
nop
nop
nop
add $12759, %r10
mov $83, %rcx
rep movsl
nop
nop
nop
dec %r11
lea addresses_WT_ht+0xde33, %rsi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rsi), %rbp
add $25403, %r9
lea addresses_WT_ht+0x9fd3, %rcx
nop
nop
sub $10872, %r11
mov (%rcx), %di
nop
inc %rdi
lea addresses_normal_ht+0x1d69e, %rsi
lea addresses_UC_ht+0xf7d3, %rdi
cmp $56782, %r10
mov $90, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x17bd3, %rsi
lea addresses_UC_ht+0x72d3, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $32, %rcx
rep movsl
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x1ee47, %rdi
nop
nop
nop
nop
nop
xor $8288, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
add %rbp, %rbp

// Store
mov $0x7d3, %r11
nop
nop
nop
nop
and $25750, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movaps %xmm0, (%r11)
sub %r11, %r11

// Store
lea addresses_WC+0x10593, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%r11)
nop
dec %r8

// Store
lea addresses_UC+0x2713, %r8
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
sub $48930, %r11

// Faulty Load
lea addresses_RW+0x13d3, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp $28692, %rdi
mov (%rcx), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'32': 1}
32
*/
