.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2418, %r15
sub $37298, %rsi
mov (%r15), %rbp
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x59e0, %rsi
lea addresses_D_ht+0x12f60, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $43, %rcx
rep movsl
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x9de0, %r15
nop
nop
nop
nop
add $54374, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0xb350, %r15
nop
inc %rbp
movb (%r15), %cl
lfence
lea addresses_normal_ht+0x4de0, %rdi
nop
nop
nop
xor $4478, %r9
mov (%rdi), %ecx
add $35499, %rcx
lea addresses_A_ht+0xd360, %rdi
add %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
cmp $1636, %r15
lea addresses_WC_ht+0x1b1dc, %rcx
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rcx)
nop
inc %rdi
lea addresses_WC_ht+0x59e0, %r10
nop
nop
xor %rbp, %rbp
mov (%r10), %r9w
nop
nop
nop
nop
nop
and $25414, %rbp
lea addresses_WT_ht+0x55c4, %r10
nop
nop
nop
nop
sub %r9, %r9
mov (%r10), %edi
dec %r15
lea addresses_WC_ht+0x7de0, %rsi
dec %r15
movl $0x61626364, (%rsi)
cmp $42944, %rbp
lea addresses_A_ht+0x15adc, %r10
nop
nop
nop
nop
xor $41553, %rdi
movl $0x61626364, (%r10)
nop
sub $48044, %r9
lea addresses_A_ht+0x5e0, %rsi
nop
nop
nop
add %rbp, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x13e88, %rsi
lea addresses_normal_ht+0x1e0b8, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $4995, %r11
mov $127, %rcx
rep movsw
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x25a8, %r11
nop
inc %rbp
mov (%r11), %cx
nop
and %r15, %r15
lea addresses_WC_ht+0xbc90, %rsi
lea addresses_WC_ht+0x111e0, %rdi
nop
cmp $47881, %rbp
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x155e0, %rdi
nop
nop
xor $46672, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
nop
nop
nop
xor $44016, %rdi

// Store
lea addresses_US+0xde0, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor $47439, %rbx
movb $0x51, (%rdx)
nop
nop
inc %r8

// Store
mov $0xe0, %rbx
nop
cmp %r11, %r11
movw $0x5152, (%rbx)
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0x65e0, %rdi
clflush (%rdi)
xor $16255, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdi)
sub %rdx, %rdx

// Load
lea addresses_A+0x10a08, %rdi
xor %r12, %r12
mov (%rdi), %rbx
nop
nop
inc %rbx

// Faulty Load
lea addresses_US+0xde0, %rdx
nop
nop
nop
xor %rsi, %rsi
movntdqa (%rdx), %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'51': 109}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
