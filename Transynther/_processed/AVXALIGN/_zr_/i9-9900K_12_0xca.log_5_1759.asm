.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x15e28, %rdx
clflush (%rdx)
nop
nop
nop
and %rcx, %rcx
movb (%rdx), %r8b
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x191f4, %rsi
lea addresses_UC_ht+0xb940, %rdi
nop
nop
sub %r10, %r10
mov $86, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x138a8, %r8
clflush (%r8)
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1a4a8, %rdx
clflush (%rdx)
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rdx)
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0xef28, %rsi
lea addresses_UC_ht+0x7ca8, %rdi
nop
cmp %r9, %r9
mov $28, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $18198, %rdi
lea addresses_normal_ht+0x928, %rsi
lea addresses_WC_ht+0x12168, %rdi
dec %r9
mov $27, %rcx
rep movsq
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x48a8, %rsi
lea addresses_A_ht+0x78a8, %rdi
clflush (%rdi)
dec %r10
mov $29, %rcx
rep movsw
nop
inc %r10
lea addresses_UC_ht+0x1068, %rdi
cmp %rcx, %rcx
movb (%rdi), %r9b
nop
nop
nop
nop
nop
cmp $5135, %rcx
lea addresses_UC_ht+0x3ca8, %rsi
nop
sub $58452, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
cmp $9451, %r8
lea addresses_normal_ht+0xc6a8, %rsi
nop
nop
nop
nop
nop
sub $29146, %rax
mov (%rsi), %r9
nop
add $30830, %rsi
lea addresses_WT_ht+0x10ca8, %rcx
nop
nop
nop
nop
nop
and $20528, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
add $35322, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x188a8, %r10
nop
nop
nop
nop
dec %rcx
movb $0x51, (%r10)
nop
nop
sub $55716, %rdx

// Store
mov $0x637b210000000228, %rax
clflush (%rax)
add %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rax)
nop
and %rax, %rax

// Store
mov $0x628, %rsi
nop
xor %rax, %rax
movw $0x5152, (%rsi)
nop
nop
inc %r14

// Load
lea addresses_normal+0x5728, %rax
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
dec %rbx

// Store
mov $0x17106600000000a8, %rax
nop
dec %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_WC+0xda1e, %r10
nop
nop
nop
nop
nop
and $3940, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r10)
nop
cmp %rdx, %rdx

// Store
mov $0x908, %rax
nop
nop
and %rcx, %rcx
movb $0x51, (%rax)
nop
sub %rsi, %rsi

// Load
lea addresses_US+0xb8e8, %rbx
nop
nop
nop
xor $42726, %r14
movb (%rbx), %r10b
nop
xor $43182, %rdx

// Store
mov $0x4a8, %r14
nop
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r14)
cmp $14416, %rsi

// Load
mov $0x6a8, %rcx
nop
nop
nop
nop
cmp %r14, %r14
movb (%rcx), %bl
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_UC+0x1cca8, %rax
and $11127, %rcx
mov (%rax), %dx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'00': 5}
00 00 00 00 00
*/
