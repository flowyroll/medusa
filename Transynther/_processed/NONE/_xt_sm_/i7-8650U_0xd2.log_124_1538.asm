.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1a180, %rbx
xor %rdx, %rdx
movb $0x61, (%rbx)
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x5670, %r11
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x11e80, %rsi
lea addresses_WT_ht+0x1a280, %rdi
nop
nop
nop
nop
sub $58175, %rax
mov $37, %rcx
rep movsw
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x13366, %rdi
and $23532, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x19e80, %rsi
lea addresses_WC_ht+0x6950, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $102, %rcx
rep movsb
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0xae80, %rdx
nop
nop
nop
xor $47765, %rax
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
nop
cmp $8945, %rdx
lea addresses_WC_ht+0x4bf6, %rdi
nop
and $56960, %rdx
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
dec %rcx
lea addresses_normal_ht+0x7400, %rsi
lea addresses_normal_ht+0x62a0, %rdi
nop
nop
nop
sub $26539, %r11
mov $6, %rcx
rep movsl
nop
dec %rdi
lea addresses_normal_ht+0x4fe8, %rbx
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rbx)
nop
inc %r10
lea addresses_UC_ht+0x680, %rsi
lea addresses_UC_ht+0xb1a6, %rdi
nop
nop
nop
sub %r10, %r10
mov $51, %rcx
rep movsq
dec %rdi
lea addresses_UC_ht+0x4dc4, %rbx
nop
cmp $47044, %rdi
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x11e37, %r11
nop
nop
nop
nop
nop
dec %rdx
mov (%r11), %r10d
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x12680, %r10
nop
add $57720, %rsi
movl $0x61626364, (%r10)
nop
nop
lfence
lea addresses_WT_ht+0x1e80, %rdi
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rdi)
nop
nop
nop
dec %r11
lea addresses_D_ht+0x1453c, %rsi
clflush (%rsi)
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
sub $58443, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x5370, %rsi
nop
nop
sub $25065, %r15
movb $0x51, (%rsi)
nop
sub $46319, %r15

// Store
lea addresses_PSE+0xb240, %rdx
nop
nop
cmp $48529, %r14
movl $0x51525354, (%rdx)
sub $57095, %rdx

// Store
lea addresses_D+0x7b80, %rdx
clflush (%rdx)
nop
nop
inc %rbp
movl $0x51525354, (%rdx)
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_A+0x9680, %r10
nop
nop
nop
add $21838, %r14
movb $0x51, (%r10)
nop
add %rsi, %rsi

// Store
mov $0xe17040000000958, %rbp
and %rdi, %rdi
movl $0x51525354, (%rbp)
nop
nop
xor $1126, %r15

// Faulty Load
lea addresses_A+0x9680, %rdx
cmp %rdi, %rdi
mov (%rdx), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'51': 124}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
