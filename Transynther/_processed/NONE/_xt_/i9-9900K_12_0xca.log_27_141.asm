.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xd597, %r11
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
add $22946, %r15
lea addresses_normal_ht+0x1207f, %rsi
nop
nop
dec %r14
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x1b3b5, %r15
nop
nop
and $12422, %rsi
mov (%r15), %r11
nop
nop
nop
nop
and $20715, %r14
lea addresses_A_ht+0x1a57f, %rsi
lea addresses_normal_ht+0x1667f, %rdi
nop
and %r10, %r10
mov $2, %rcx
rep movsb
nop
cmp $64325, %rdi
lea addresses_A_ht+0x1c87f, %r9
nop
sub $61308, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
add $8888, %r14
lea addresses_normal_ht+0x1bd7f, %r15
nop
nop
nop
nop
dec %rdi
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
sub $64019, %rsi
lea addresses_WT_ht+0x1ac7f, %rdi
nop
nop
nop
sub $58479, %r14
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1827f, %rsi
lea addresses_UC_ht+0xefe7, %rdi
clflush (%rsi)
nop
and $15064, %r10
mov $116, %rcx
rep movsb
nop
nop
nop
nop
and $51704, %rdi
lea addresses_WC_ht+0x1b63f, %r11
dec %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x8bf5, %rcx
nop
add %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x417f, %r9
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0xc07f, %r11
nop
nop
nop
sub %rcx, %rcx
mov (%r11), %rdi
nop
nop
nop
nop
nop
add $1155, %r9
lea addresses_D_ht+0x1485f, %rsi
lea addresses_WC_ht+0x167f, %rdi
nop
nop
lfence
mov $86, %rcx
rep movsl
nop
nop
nop
nop
add $46949, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_normal+0x187f, %rax
nop
xor $16973, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_A+0x47df, %r9
nop
nop
xor %r10, %r10
movw $0x5152, (%r9)
nop
nop
dec %rax

// Faulty Load
lea addresses_normal+0x187f, %r12
nop
nop
nop
dec %rbp
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'34': 27}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
