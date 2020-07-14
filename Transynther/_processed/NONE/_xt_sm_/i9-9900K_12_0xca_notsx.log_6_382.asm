.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x27cb, %r12
nop
add $63043, %rdi
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1be6b, %rbp
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
add %rdi, %rdi
lea addresses_WC_ht+0xd9f, %rsi
nop
nop
xor $27845, %r15
mov (%rsi), %r13w
nop
nop
add $44854, %rbp
lea addresses_normal_ht+0xafcb, %rsi
lea addresses_A_ht+0xce4b, %rdi
nop
nop
nop
nop
inc %rbp
mov $82, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x38ab, %rsi
nop
nop
sub %r12, %r12
mov (%rsi), %r15
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x13743, %rsi
lea addresses_UC_ht+0x67cb, %rdi
nop
nop
sub $53948, %rdx
mov $10, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x83cb, %rsi
lea addresses_WC_ht+0xe9db, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $56361, %r12
mov $15, %rcx
rep movsw
nop
nop
nop
nop
nop
add $4715, %rsi
lea addresses_UC_ht+0xcbcb, %rsi
lea addresses_UC_ht+0xcbc7, %rdi
cmp %r12, %r12
mov $122, %rcx
rep movsl
add $46866, %r12
lea addresses_WT_ht+0x59eb, %rdi
nop
cmp $46583, %rdx
mov (%rdi), %bp
nop
inc %rdi
lea addresses_D_ht+0x12bcb, %rsi
lea addresses_A_ht+0xb3cb, %rdi
nop
nop
and $61194, %r15
mov $42, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $28632, %rcx
lea addresses_WT_ht+0x2cb, %rsi
nop
nop
nop
nop
nop
cmp $43524, %r15
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x9bb3, %rsi
nop
dec %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
xor $50165, %rcx

// Store
lea addresses_A+0xfa4b, %rdi
nop
nop
nop
mfence
movw $0x5152, (%rdi)
nop
nop
nop
nop
mfence

// Store
lea addresses_normal+0x47b1, %rcx
clflush (%rcx)
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
cmp $14986, %rsi

// Load
lea addresses_RW+0x183f3, %rbx
nop
nop
and $53172, %rsi
mov (%rbx), %cx
dec %rsi

// Store
lea addresses_A+0xabcb, %rbx
nop
nop
nop
nop
and %r11, %r11
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
add $48120, %rdi

// Store
lea addresses_A+0x16dcb, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $12805, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
cmp $48449, %r11

// Store
mov $0x6338f700000007cb, %rdx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
cmp $23552, %rdi

// Store
lea addresses_A+0x1cfcb, %rcx
nop
cmp $52094, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovaps %ymm7, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0xb6cb, %r12
nop
sub %r11, %r11
movw $0x5152, (%r12)
cmp %rdi, %rdi

// Faulty Load
lea addresses_A+0x1cfcb, %rsi
nop
nop
nop
nop
and $28000, %rcx
mov (%rsi), %r11w
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'58': 6}
58 58 58 58 58 58
*/
