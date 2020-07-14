.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xd96b, %rcx
inc %rdi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1616b, %rsi
lea addresses_A_ht+0x1de83, %rdi
nop
nop
nop
sub $29913, %rdx
mov $69, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x1c6b, %rdx
nop
sub %r10, %r10
movb $0x61, (%rdx)
nop
inc %r11
lea addresses_WC_ht+0xf7e3, %r13
clflush (%r13)
nop
nop
add %rdi, %rdi
movups (%r13), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x9020, %rdi
nop
nop
inc %r11
movb (%rdi), %dl
nop
nop
sub $12818, %rdx
lea addresses_UC_ht+0x216b, %rsi
lea addresses_D_ht+0x4d6b, %rdi
nop
nop
nop
nop
sub $7823, %r15
mov $101, %rcx
rep movsq
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x26eb, %rdx
clflush (%rdx)
nop
nop
nop
dec %r13
movb $0x61, (%rdx)
nop
nop
xor $33979, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1edeb, %r11
nop
inc %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
inc %rsi

// Load
lea addresses_PSE+0x96b, %r10
nop
nop
nop
nop
nop
xor $32667, %rbp
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
add $28321, %r11

// Store
lea addresses_WC+0x9153, %r14
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r14)
mfence

// REPMOV
lea addresses_PSE+0xde4b, %rsi
lea addresses_A+0x7e93, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $44, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $30628, %rbp

// REPMOV
lea addresses_A+0xe1c5, %rsi
lea addresses_D+0x1ca6b, %rdi
nop
sub $15939, %r14
mov $77, %rcx
rep movsw
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_A+0x1e06b, %rcx
nop
nop
cmp $62769, %rsi
mov (%rcx), %r13w
nop
nop
nop
sub $4106, %rbp

// REPMOV
lea addresses_RW+0x14147, %rsi
lea addresses_D+0x1c16b, %rdi
clflush (%rdi)
add $34126, %r15
mov $47, %rcx
rep movsl
and %r13, %r13

// Store
lea addresses_RW+0x1075b, %r10
clflush (%r10)
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
xor $61680, %rcx

// Faulty Load
lea addresses_PSE+0x96b, %r13
nop
nop
nop
and %rsi, %rsi
movb (%r13), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
