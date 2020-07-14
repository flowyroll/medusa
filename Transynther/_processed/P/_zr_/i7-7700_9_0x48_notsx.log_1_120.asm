.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xdcf8, %rsi
lea addresses_normal_ht+0x13ad7, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r13, %r13
mov $82, %rcx
rep movsq
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1e9fb, %rbp
nop
nop
nop
nop
nop
dec %r12
mov (%rbp), %r11w
nop
nop
cmp $31830, %rcx
lea addresses_UC_ht+0x1b4d7, %r12
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %r12
vmovaps %ymm4, (%r12)
nop
nop
nop
sub $33709, %r13
lea addresses_WT_ht+0x17ed7, %r11
and $24565, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
cmp $58029, %rbp
lea addresses_WT_ht+0xa6d7, %rsi
lea addresses_WT_ht+0x120d7, %rdi
clflush (%rsi)
nop
nop
cmp %rdx, %rdx
mov $24, %rcx
rep movsw
sub $9099, %rcx
lea addresses_A_ht+0x1eaf7, %rdx
nop
nop
nop
add $23550, %rcx
mov (%rdx), %r13
nop
nop
cmp $48393, %r13
lea addresses_WT_ht+0x1162f, %r13
nop
nop
nop
nop
and $30274, %rsi
mov (%r13), %cx
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x12dd7, %r11
nop
nop
nop
sub %r13, %r13
movb (%r11), %r12b
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x1ce9b, %rsi
lea addresses_WT_ht+0x13ad7, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $64168, %r13
mov $49, %rcx
rep movsq
nop
nop
inc %rcx
lea addresses_WC_ht+0x1e2d7, %rsi
lea addresses_WT_ht+0x95d7, %rdi
nop
nop
nop
add %rbp, %rbp
mov $68, %rcx
rep movsb
nop
cmp $65490, %rdx
lea addresses_A_ht+0x9dd7, %rsi
nop
nop
cmp %r11, %r11
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
add $57785, %r12
lea addresses_UC_ht+0xaad7, %rsi
lea addresses_normal_ht+0xe74b, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and %r11, %r11
mov $42, %rcx
rep movsq
and %rcx, %rcx
lea addresses_WT_ht+0x2f2b, %rsi
lea addresses_UC_ht+0x76d7, %rdi
nop
nop
nop
add $25294, %r11
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x14a37, %rdx
and $28636, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rdx)
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdx

// Faulty Load
mov $0x2d7, %rdx
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%rdx), %al
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'00': 1}
00
*/
