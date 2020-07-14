.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x162a8, %r12
nop
cmp $52456, %r13
mov (%r12), %ax
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x141a8, %rsi
lea addresses_WC_ht+0x11ca8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
cmp $30542, %r12
mov $125, %rcx
rep movsq
nop
nop
nop
xor $65038, %rsi
lea addresses_normal_ht+0x7648, %rsi
nop
nop
nop
inc %rcx
movb $0x61, (%rsi)
nop
nop
nop
add $5515, %rax
lea addresses_WC_ht+0x1ba28, %rsi
lea addresses_D_ht+0x104c8, %rdi
nop
nop
nop
nop
nop
and $4983, %rbx
mov $11, %rcx
rep movsw
nop
nop
inc %r12
lea addresses_normal_ht+0xb6a8, %rdi
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %r13w
xor %rax, %rax
lea addresses_UC_ht+0x176a8, %r12
add %rsi, %rsi
movw $0x6162, (%r12)
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x8d20, %rax
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
and $40730, %rbx
lea addresses_A_ht+0xc0a8, %rsi
xor %r12, %r12
mov (%rsi), %r13d
nop
nop
add $17200, %rcx
lea addresses_D_ht+0xba10, %rbx
nop
sub $12108, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm7, (%rbx)
nop
cmp $977, %rbx
lea addresses_normal_ht+0x17da8, %rsi
lea addresses_normal_ht+0x8428, %rdi
nop
nop
nop
nop
sub $12690, %r9
mov $119, %rcx
rep movsl
add $57370, %rsi
lea addresses_D_ht+0x2ff8, %rdi
clflush (%rdi)
nop
nop
and %rsi, %rsi
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
xor %r9, %r9
lea addresses_UC_ht+0x133a8, %rcx
nop
sub $48399, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x104a8, %r12
nop
nop
nop
inc %rdi
movb (%r12), %bl
nop
nop
cmp $20463, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0xeb6e, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $28941, %rdx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
xor $47226, %rdx

// Store
lea addresses_PSE+0x1cda8, %r9
nop
nop
nop
nop
and $44014, %r10
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp $38840, %rbx

// Store
lea addresses_A+0x191a8, %rbx
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbx)
nop
nop
and $44438, %rdx

// Store
lea addresses_WC+0x4328, %rbp
xor $35059, %rdx
movw $0x5152, (%rbp)
nop
nop
and $33416, %r9

// Store
lea addresses_WC+0x106d6, %rbp
and %r10, %r10
movl $0x51525354, (%rbp)
nop
nop
add $32166, %rsi

// Store
lea addresses_normal+0xcfa8, %rsi
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%rsi)

// Exception!!!
nop
mov (0), %rdx
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_A+0x1a9a8, %rdi
nop
nop
nop
add %rdx, %rdx
mov (%rdi), %esi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}}
{'00': 68}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
