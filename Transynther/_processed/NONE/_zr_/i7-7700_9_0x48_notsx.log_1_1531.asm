.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18262, %rdi
nop
nop
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
cmp $30429, %r14
lea addresses_UC_ht+0xdafa, %rbp
nop
nop
and $61172, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x10db2, %rcx
nop
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
and %r15, %r15
lea addresses_A_ht+0x10ec5, %r15
sub %rdi, %rdi
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
add $58132, %rcx
lea addresses_A_ht+0xb27a, %rsi
lea addresses_normal_ht+0x176fa, %rdi
nop
nop
nop
nop
nop
xor $41300, %r11
mov $87, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x155a, %rdi
nop
nop
inc %rdx
mov (%rdi), %si
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x3bfa, %rsi
lea addresses_A_ht+0x1869a, %rdi
nop
nop
nop
nop
and $6802, %r11
mov $91, %rcx
rep movsb
nop
nop
and $58608, %r14
lea addresses_UC_ht+0x637a, %r15
nop
nop
nop
nop
add %r11, %r11
mov (%r15), %bp
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1cf5a, %rcx
and $6184, %rbp
mov (%rcx), %r11d
nop
nop
nop
nop
nop
cmp $40767, %rbp
lea addresses_WC_ht+0x5152, %rdi
nop
nop
nop
sub $25828, %rsi
mov (%rdi), %edx
nop
nop
nop
nop
sub $28004, %rdx
lea addresses_UC_ht+0x136fa, %r11
nop
nop
xor $56411, %rdi
mov (%r11), %bp
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xb7fa, %rcx
nop
cmp %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
and $28808, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x198fa, %rdx
nop
xor %rax, %rax
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
add $64323, %r8

// Store
lea addresses_RW+0x5c7a, %r9
nop
inc %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movaps %xmm3, (%r9)
nop
sub %rcx, %rcx

// Load
lea addresses_D+0xe2fa, %r8
nop
nop
nop
sub %rax, %rax
mov (%r8), %rbp
xor $27738, %rbx

// Store
lea addresses_US+0x4ffa, %r9
clflush (%r9)
nop
nop
inc %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r9)
nop
cmp $5584, %rbp

// Faulty Load
lea addresses_A+0x1aafa, %rbx
nop
nop
and $30974, %rax
mov (%rbx), %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'00': 1}
00
*/
