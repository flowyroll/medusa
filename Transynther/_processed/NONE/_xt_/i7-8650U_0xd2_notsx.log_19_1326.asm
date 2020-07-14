.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xdec8, %rdi
nop
nop
nop
nop
inc %rsi
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
sub $24768, %rdi
lea addresses_WT_ht+0x1d988, %rsi
lea addresses_WT_ht+0xc5c8, %rdi
nop
inc %r12
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
add $49079, %rcx
lea addresses_WC_ht+0x1c0c8, %rsi
nop
nop
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x12428, %rbx
dec %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
inc %r11
lea addresses_normal_ht+0x6c08, %rcx
nop
nop
nop
nop
nop
add $58877, %r11
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x171c8, %rbx
nop
nop
nop
nop
xor %r11, %r11
mov (%rbx), %r14w
nop
add %rsi, %rsi
lea addresses_A_ht+0x110c8, %rsi
lea addresses_normal_ht+0xa588, %rdi
sub %r12, %r12
mov $36, %rcx
rep movsw
nop
nop
nop
nop
cmp $10096, %rcx
lea addresses_D_ht+0x49a8, %rdi
nop
nop
nop
nop
nop
dec %rsi
mov (%rdi), %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x12564, %rsi
lea addresses_WC_ht+0x41b8, %rdi
nop
nop
nop
nop
xor $30359, %r10
mov $17, %rcx
rep movsl
nop
nop
dec %rbx
lea addresses_WT_ht+0xe4b4, %rsi
lea addresses_UC_ht+0x120c8, %rdi
nop
xor %rbx, %rbx
mov $102, %rcx
rep movsl
nop
mfence
lea addresses_UC_ht+0x1d59d, %r14
nop
nop
nop
nop
dec %rbx
movb $0x61, (%r14)
nop
nop
cmp $20500, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0x16d20, %rax
nop
nop
nop
dec %r10
movw $0x5152, (%rax)
nop
nop
cmp $40716, %r14

// Load
lea addresses_D+0x5d24, %rbp
nop
dec %rsi
mov (%rbp), %eax
nop
inc %rsi

// Store
lea addresses_normal+0x5a0c, %rsi
clflush (%rsi)
and $32522, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
add %r11, %r11

// Load
lea addresses_WT+0xdafa, %r11
clflush (%r11)
nop
nop
and $19694, %rax
vmovups (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
add $7601, %rax

// Store
lea addresses_WC+0xeac8, %rsi
nop
inc %r11
movl $0x51525354, (%rsi)
and $59444, %rbp

// Load
lea addresses_US+0x4ac8, %r14
clflush (%r14)
nop
nop
xor %r11, %r11
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_PSE+0x116c8, %r10
nop
nop
nop
cmp $17974, %rsi
mov (%r10), %r14d
sub $62494, %r10

// Store
lea addresses_UC+0x18348, %r14
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
nop
and $21027, %rdi

// Faulty Load
lea addresses_normal+0x2ec8, %rbp
nop
nop
nop
nop
nop
add %r11, %r11
mov (%rbp), %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'34': 19}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
