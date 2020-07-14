.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e8d3, %r8
nop
nop
nop
add $27730, %r13
movb $0x61, (%r8)
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x18ecb, %r11
sub %r15, %r15
movw $0x6162, (%r11)
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xf683, %rsi
lea addresses_normal_ht+0xd147, %rdi
xor %r11, %r11
mov $88, %rcx
rep movsl
nop
add %r15, %r15
lea addresses_WC_ht+0x499f, %rsi
lea addresses_normal_ht+0x198a5, %rdi
nop
nop
nop
sub %r8, %r8
mov $88, %rcx
rep movsb
nop
nop
nop
nop
nop
and $56513, %rsi
lea addresses_WT_ht+0x1683, %rsi
lea addresses_normal_ht+0x1be23, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x28cf, %rsi
nop
nop
nop
and $36752, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x15683, %r8
nop
add $44158, %rsi
mov (%r8), %r11w
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1ed83, %r15
dec %r11
mov (%r15), %r8d
nop
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x2d83, %r12
and $4733, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_PSE+0x7d7, %r13
clflush (%r13)
nop
nop
and $36163, %rbx
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_PSE+0x8683, %r12
nop
nop
nop
nop
add $21524, %rbx
mov (%r12), %rdi
nop
nop
nop
nop
sub $21634, %rbp

// REPMOV
lea addresses_normal+0x934b, %rsi
lea addresses_WC+0x1e375, %rdi
nop
cmp %r12, %r12
mov $82, %rcx
rep movsl
nop
dec %r13

// Load
lea addresses_WT+0x1fe93, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $26602, %rbx
movb (%r12), %r13b
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_D+0x18d83, %rdi
nop
nop
nop
add %r13, %r13
vmovaps (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
