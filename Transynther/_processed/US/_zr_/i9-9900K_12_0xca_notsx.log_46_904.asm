.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e1a5, %r15
nop
nop
nop
nop
nop
inc %r9
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
nop
nop
cmp $27144, %r13
lea addresses_normal_ht+0xeda5, %rsi
lea addresses_WT_ht+0xff25, %rdi
clflush (%rsi)
nop
sub %r13, %r13
mov $28, %rcx
rep movsw
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x168c5, %r15
clflush (%r15)
nop
nop
xor %r9, %r9
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xdaa5, %rcx
nop
inc %r9
mov (%rcx), %si
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1eaa5, %rsi
clflush (%rsi)
nop
inc %rcx
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x447f, %rsi
lea addresses_WT_ht+0x197b5, %rdi
nop
nop
nop
nop
nop
cmp $11249, %rdx
mov $94, %rcx
rep movsw
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x1d2e5, %rsi
lea addresses_D_ht+0x70a5, %rdi
nop
nop
dec %r13
mov $40, %rcx
rep movsw
nop
add $15980, %rdx
lea addresses_UC_ht+0x2385, %r9
nop
nop
nop
nop
cmp $1226, %rdx
mov (%r9), %rsi
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0xcf0d, %rcx
nop
nop
and $32160, %rdi
movl $0x61626364, (%rcx)
xor $2280, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rbx

// Faulty Load
lea addresses_US+0xdda5, %rbp
nop
sub $54530, %r10
mov (%rbp), %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'00': 46}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
